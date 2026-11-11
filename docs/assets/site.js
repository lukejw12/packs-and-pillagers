(function () {
  var body = document.body, root = body.getAttribute('data-root') || '';
  var P = window.PNP || { cards: {}, recipes: {}, pools: {}, order: [], categories: {} };

  function norm(s) { return (s || '').toLowerCase().replace(/[^a-z0-9 ]+/g, ' ').replace(/\s+/g, ' ').trim(); }
  function esc(s) { return String(s).replace(/[&<>"]/g, function (c) { return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c]; }); }
  function sp(a, cls) { return a ? '<i class="sp ' + a[0] + (cls ? ' ' + cls : '') + '" style="background-position:' + a[1] + '"></i>' : ''; }

  function card(id, o) {
    var c = P.cards[id];
    if (!c) return '';
    o = o || {};
    var art = o.art || c.art;
    var inner = '<b class="ct">' + esc(c.name) + '</b>' + (art ? sp(art, 'ca' + (art[2] ? ' b' : '')) : '');
    if (o.label !== false) {
      if (c.sell) inner += '<span class="cs">' + c.sell + '</span>';
      if (c.health) inner += '<span class="ch">' + c.health + '</span>';
    }
    var st = '--ts:' + c.titleScale + (o.u ? ';--u:' + o.u + 'px' : '') + (o.style ? ';' + o.style : '');
    var cls = 'c k-' + c.frame + (o.cls ? ' ' + o.cls : '');
    var extra = o.n ? ' data-n="' + esc(o.n) + '"' : '';
    if (o.link === false) {
      return '<div class="' + cls + '" style="' + st + '" role="img" aria-label="' + esc(c.title) + '"' + extra + '><span class="cf">' + inner + '</span></div>';
    }
    return '<a class="' + cls + '" href="' + root + 'card.html#' + id + '" style="' + st + '" aria-label="' + esc(c.title) + '"' + extra + '><span class="cf">' + inner + '</span></a>';
  }

  function clink(id, text) {
    var c = P.cards[id];
    if (!c) return text || esc(id);
    return '<a class="cl" href="' + root + 'card.html#' + id + '">' + sp(c.art, 'ico') + (text || esc(c.title)) + '</a>';
  }

  function md(s) {
    return (s || '').replace(/\{icon:([a-z0-9_]+)\}/g, function (m, id) { return P.cards[id] ? sp(P.cards[id].art, 'ico') : ''; })
      .replace(/\[\[([a-z0-9_]+)(?:\|([^\]]+))?\]\]/g, function (m, id, t) { return clink(id, t); })
      .replace(/\[p:([^|\]]+)\|([^\]]+)\]/g, function (m, href, t) { return '<a href="' + root + href + '">' + t + '</a>'; });
  }

  function joinWords(xs, word) {
    if (xs.length < 2) return xs.join('');
    if (xs.length === 2) return xs[0] + ' ' + word + ' ' + xs[1];
    return xs.slice(0, -1).join(', ') + ', ' + word + ' ' + xs[xs.length - 1];
  }

  function stack(ids) {
    var n = ids.length;
    return '<div class="stk" style="--n:' + n + '">' + ids.map(function (id, i) {
      return card(id, { style: '--i:' + i, label: i === n - 1 });
    }).join('') + '</div>';
  }

  function pool(name, limit, cls) {
    var it = P.pools[name] || [], show = limit ? it.slice(0, limit) : it;
    var h = show.map(function (e) { return '<li>' + clink(e[0]) + '<span class="pc">' + e[1] + '</span></li>'; }).join('');
    if (limit && it.length > limit) h += '<li class="more">and ' + (it.length - limit) + ' more</li>';
    return '<ul class="' + (cls || 'pl') + '">' + h + '</ul>';
  }

  var ARROW = '<svg class="arw" viewBox="0 0 21 16" aria-hidden="true"><path d="M0 5H14V1' + 'h1v1'.repeat(7) + 'h-1v1'.repeat(7) + 'V10H0z"/></svg>';

  function recipe(r) {
    var x = P.recipes[r];
    if (!x) return '';
    var outs = x.makes.map(function (e) {
      if (e[0] === '@') return '<div class="rp"><p>One of these:</p>' + pool(e[1], 5) + '</div>';
      return '<div class="ro">' + card(e[0]) + (e[1] > 1 ? '<span class="x">&times;' + e[1] + '</span>' : '') + '</div>';
    }).join('');
    return '<div class="rcp" id="r' + r + '" data-n="' + x.search + '"><div class="rk">' + stack(x.stack) +
      '<div class="ra">' + ARROW + '<span>' + x.time + '</span></div><div class="rout">' + outs + '</div></div>' +
      '<p class="ru">' + x.usesUp + '.</p><p class="rl">' + md(x.learn) + '</p></div>';
  }

  function tiles(rs) { return '<div class="rgrid">' + rs.map(recipe).join('') + '</div>'; }
  function list(ids) { return '<ul class="pl src">' + ids.map(function (id) { return '<li>' + clink(id) + '</li>'; }).join('') + '</ul>'; }

  function fill(scope) {
    scope.querySelectorAll('[data-card]').forEach(function (el) {
      var d = el.dataset, o = { u: d.u ? +d.u : 0, link: d.link !== '0', cls: d.cls || '', label: d.label !== '0', n: d.n || '' };
      if (d.art) {
        var a = d.art.split('|');
        o.art = [a[0], a[1], +a[2]];
      }
      el.outerHTML = card(d.card, o);
    });
    scope.querySelectorAll('[data-rs]').forEach(function (el) {
      el.innerHTML = el.getAttribute('data-rs').split(',').filter(Boolean).map(recipe).join('');
    });
    scope.querySelectorAll('[data-pool]').forEach(function (el) {
      el.outerHTML = pool(el.getAttribute('data-pool'), +el.getAttribute('data-limit') || 0, el.className);
    });
  }

  function cardPage(id) {
    var c = P.cards[id];
    if (!c || !c.category) return '';
    var h = '', get = '', i = P.order.indexOf(id);
    h += '<p class="crumbs"><a href="cards.html">Cards</a> / <a href="cards.html#' + c.category + '">' + esc(P.categories[c.category] || '') + '</a></p>';
    h += '<div class="chead"><div class="big">' + card(id, { link: false }) + '</div><div class="cinfo"><h1>' + esc(c.title) + '</h1>';
    h += '<p class="kn"><i class="sw k-' + c.frame + '"></i>' + esc(c.type || '') + '</p><p class="desc">' + esc(c.desc || '') + '</p>';
    if (c.stats) h += '<dl class="stats">' + c.stats.map(function (r) { return '<dt>' + r[0] + '</dt><dd>' + md(r[1]) + '</dd>'; }).join('') + '</dl>';
    h += '</div></div>';
    if (c.madeFrom) get += '<h3>Made From</h3>' + tiles(c.madeFrom);
    if (c.foundIn) get += '<h3>Found In</h3><ul class="pl src">' + c.foundIn.map(function (f) {
      return '<li>' + clink(f[0]) + f[1] + '<span class="pc">' + f[2] + '</span></li>';
    }).join('') + '</ul>';
    if (c.lootFrom) get += '<h3>Loot From</h3>' + list(c.lootFrom);
    if (c.droppedBy) get += '<h3>Dropped By</h3>' + list(c.droppedBy);
    if (c.world) get += '<h3>Out in the World</h3><p>' + esc(c.world) + '.</p>';
    if (c.capture) get += '<h3>Out in the World</h3><p>Right-click one out in the world with your Card Board to bring it onto your table.</p>';
    if (c.freeWith) get += '<h3>Comes Free With</h3><p>You learn it anyway the first time you get ' + joinWords(c.freeWith.map(function (x) { return clink(x); }), 'or') + '.</p>';
    if (c.notes) get += '<h3>Other Ways</h3><p>' + md(c.notes) + '</p>';
    if (get) h += '<h2 id="how-to-get-it">How to Get It</h2>' + get;
    if (c.teaches) h += '<h2 id="teaches">Teaches</h2>' + tiles(c.teaches);
    if (c.contents) h += '<h2 id="what-s-inside">What\'s Inside</h2><p>Opening it gives ' + c.contents[1] + ' card' + (c.contents[1] === 1 ? '' : 's') +
      '. Each one comes from this list:</p>' + pool(c.contents[0], 0, 'pl cols');
    if (c.gives) h += '<h2 id="what-it-gives">What It Gives</h2>' + c.gives.map(function (x) {
      return '<h3>' + x[0] + '</h3><p class="dim">Every ' + x[1] + ', one of these:</p>' + pool(x[2], 0, 'pl cols');
    }).join('');
    if (c.gateway) h += '<h2 id="inside">Inside</h2><p>A few waves of enemies, and then ' + (c.gateway.boss ? 'the ' + clink(c.gateway.boss) : 'a boss') + '.' +
      (c.gateway.learns ? ' Win and you learn the ' + clink(c.gateway.learns) + '.' : '') + ' The loot can include:</p>' + list(c.gateway.loot);
    if (c.portal) h += '<h2 id="using-it">Using It</h2><p>' + (c.portal.key ? 'Each run costs a ' + clink(c.portal.key) + ' and takes' : 'It takes') +
      ' your villagers back to the ' + esc(c.portal.place) + ' and the ' + (c.portal.boss ? clink(c.portal.boss) : 'boss') + '.</p>';
    if (c.where) h += '<h2 id="where-you-meet-it">Where You Meet It</h2><p>' + esc(c.where) + '.</p>';
    if (c.usedIn) h += '<h2 id="used-in">Used In</h2>' + tiles(c.usedIn);
    if (c.usedInList) h += '<h2 id="used-in">Used In</h2><p>' + esc(c.title) + ' goes into ' + c.usedInCount + ' recipes. They make:</p><p class="many">' +
      c.usedInList.map(md).join(', ') + '</p><p><a href="recipes.html">See every recipe</a></p>';
    var prev = i > 0 ? P.order[i - 1] : '', next = i > -1 && i < P.order.length - 1 ? P.order[i + 1] : '';
    h += '<nav class="pager" aria-label="More cards">' +
      (prev ? '<a href="card.html#' + prev + '">Previous: ' + esc(P.cards[prev].title) + '</a>' : '<span></span>') +
      (next ? '<a href="card.html#' + next + '">Next: ' + esc(P.cards[next].title) + '</a>' : '') + '</nav>';
    return h;
  }

  fill(document);

  var menu = document.querySelector('.menu'), scrim = document.querySelector('.scrim');
  function setNav(open) {
    body.classList.toggle('nav-open', open);
    if (menu) menu.setAttribute('aria-expanded', open ? 'true' : 'false');
  }
  if (menu) menu.addEventListener('click', function () { setNav(!body.classList.contains('nav-open')); });
  if (scrim) scrim.addEventListener('click', function () { setNav(false); });
  document.querySelectorAll('.side a').forEach(function (a) { a.addEventListener('click', function () { setNav(false); }); });

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
      var img = e.i ? '<i class="sp ' + e.i + '" style="background-position:' + e.p + '"></i>' : '<span class="pg"></span>';
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

  document.querySelectorAll('.filt').forEach(function (f) {
    var lst = document.querySelector(f.getAttribute('data-for'));
    if (!lst) return;
    var chips = f.querySelectorAll('button[data-v]'), q = f.querySelector('input'), cur = 'all';
    var empty = lst.querySelector('.empty');
    function apply() {
      var t = q ? norm(q.value) : '', shown = 0;
      lst.querySelectorAll('[data-sec]').forEach(function (sec) {
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

  var view = document.getElementById('cardview');
  if (view) {
    var show = function () {
      var id = decodeURIComponent(location.hash.slice(1)), h = cardPage(id);
      if (!h) {
        view.innerHTML = '<h1>Card Not Found</h1><p>There\'s no card by that name. Try the <a href="cards.html">Cards</a> page.</p>';
        document.title = 'Card Not Found | Packs & Pillagers Wiki';
        return;
      }
      view.innerHTML = h;
      document.title = P.cards[id].title + ' | Packs & Pillagers Wiki';
      window.scrollTo(0, 0);
    };
    window.addEventListener('hashchange', show);
    show();
  } else if (location.hash) {
    var target = document.getElementById(location.hash.slice(1));
    if (target) target.scrollIntoView();
  }

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
