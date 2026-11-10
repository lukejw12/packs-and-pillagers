(function () {
  var body = document.body, root = body.getAttribute('data-root') || '';

  function norm(s) { return (s || '').toLowerCase().replace(/[^a-z0-9 ]+/g, ' ').replace(/\s+/g, ' ').trim(); }
  function esc(s) { return s.replace(/[&<>"]/g, function (c) { return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]; }); }

  // phone menu
  var menu = document.querySelector('.menu'), scrim = document.querySelector('.scrim');
  function setNav(open) {
    body.classList.toggle('nav-open', open);
    if (menu) menu.setAttribute('aria-expanded', open ? 'true' : 'false');
  }
  if (menu) menu.addEventListener('click', function () { setNav(!body.classList.contains('nav-open')); });
  if (scrim) scrim.addEventListener('click', function () { setNav(false); });
  document.querySelectorAll('.side a').forEach(function (a) { a.addEventListener('click', function () { setNav(false); }); });

  // search box in the header
  var box = document.querySelector('.search input'), out = document.querySelector('.search .results');
  var idx = window.PNP_SEARCH || [], hits = [], sel = -1;
  idx.forEach(function (e) { e.s = norm(e.n); });
  function find(q) {
    q = norm(q);
    if (!q) return [];
    var res = [];
    idx.forEach(function (e) {
      var s = e.s, sc;
      if (s === q) sc = 0;
      else if (s.indexOf(q) === 0) sc = 1;
      else if ((' ' + s).indexOf(' ' + q) >= 0) sc = 2;
      else if (s.indexOf(q) >= 0) sc = 3;
      else return;
      if (e.t === 'p') sc -= 0.5;
      res.push([sc, e]);
    });
    res.sort(function (a, b) { return a[0] - b[0] || a[1].n.length - b[1].n.length; });
    return res.slice(0, 8).map(function (r) { return r[1]; });
  }
  function draw() {
    if (!box.value.trim()) { out.hidden = true; return; }
    hits = find(box.value);
    sel = hits.length ? 0 : -1;
    out.innerHTML = hits.length ? hits.map(function (e, i) {
      var img = e.a ? '<img src="' + root + e.a + '" alt=""' + (e.h ? ' class="h"' : '') + '>' : '<span class="pg"></span>';
      return '<a href="' + root + e.u + '"' + (i === sel ? ' class="sel"' : '') + '>' + img +
        '<span>' + esc(e.n) + '</span><small>' + esc(e.k || '') + '</small></a>';
    }).join('') : '<p class="none">Nothing matches that.</p>';
    out.hidden = false;
  }
  function mark() {
    out.querySelectorAll('a').forEach(function (a, i) {
      a.classList.toggle('sel', i === sel);
      if (i === sel) a.scrollIntoView({ block: 'nearest' });
    });
  }
  if (box && out) {
    box.addEventListener('input', draw);
    box.addEventListener('focus', draw);
    box.addEventListener('keydown', function (e) {
      if (e.key === 'ArrowDown') { if (hits.length) { sel = (sel + 1) % hits.length; mark(); } e.preventDefault(); }
      else if (e.key === 'ArrowUp') { if (hits.length) { sel = (sel - 1 + hits.length) % hits.length; mark(); } e.preventDefault(); }
      else if (e.key === 'Enter') { if (hits[sel]) location.href = root + hits[sel].u; }
      else if (e.key === 'Escape') { box.value = ''; out.hidden = true; box.blur(); }
    });
    document.addEventListener('click', function (e) { if (!e.target.closest('.search')) out.hidden = true; });
    document.addEventListener('keydown', function (e) {
      var t = document.activeElement && document.activeElement.tagName;
      if (e.key === '/' && !/^(INPUT|TEXTAREA|SELECT)$/.test(t)) { e.preventDefault(); box.focus(); }
    });
  }

  // group chips and the filter box on the cards and recipes pages
  document.querySelectorAll('.filt').forEach(function (f) {
    var list = document.querySelector(f.getAttribute('data-for'));
    if (!list) return;
    var chips = f.querySelectorAll('button[data-v]'), q = f.querySelector('input'), cur = 'all';
    var empty = list.querySelector('.empty');
    function apply() {
      var t = q ? norm(q.value) : '', shown = 0;
      list.querySelectorAll('[data-sec]').forEach(function (sec) {
        var on = cur === 'all' || sec.getAttribute('data-sec') === cur, any = 0;
        sec.querySelectorAll('[data-n]').forEach(function (it) {
          var ok = on && (!t || it.getAttribute('data-n').indexOf(t) >= 0);
          it.hidden = !ok;
          if (ok) any++;
        });
        sec.hidden = !any;
        shown += any;
      });
      if (empty) empty.hidden = shown > 0;
    }
    function pick(v) {
      cur = v;
      chips.forEach(function (c) { c.setAttribute('aria-pressed', c.getAttribute('data-v') === v ? 'true' : 'false'); });
      apply();
    }
    chips.forEach(function (c) { c.addEventListener('click', function () { pick(c.getAttribute('data-v')); }); });
    if (q) q.addEventListener('input', apply);
    var h = location.hash.slice(1);
    if (h && f.querySelector('button[data-v="' + h + '"]')) pick(h);
  });

  // the villager and oak tree on the home page
  var demo = document.querySelector('.demo');
  var still = window.matchMedia && matchMedia('(prefers-reduced-motion: reduce)').matches;
  if (demo && !still) {
    demo.classList.add('play');
    demo.addEventListener('click', function () {
      demo.classList.remove('play');
      void demo.offsetWidth;
      demo.classList.add('play');
    });
  }
})();
