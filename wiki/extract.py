import re, json, os, glob, sys

class P:
    def __init__(s, t): s.t, s.i = t, 0
    def ws(s):
        while s.i < len(s.t) and s.t[s.i] in ' \t\r\n': s.i += 1
    def val(s):
        s.ws(); c = s.t[s.i]
        if c == '{': return s.obj()
        if c == '[': return s.lst()
        if c in '"\'': return s.string()
        return s.bare()
    def string(s):
        q = s.t[s.i]; s.i += 1; o = []
        while True:
            c = s.t[s.i]
            if c == '\\':
                n = s.t[s.i + 1]
                if n == 'n': o.append('\n'); s.i += 2; continue
                if n == 'u': o.append(chr(int(s.t[s.i + 2:s.i + 6], 16))); s.i += 6; continue
                o.append(n); s.i += 2; continue
            if c == q: s.i += 1; return ''.join(o)
            o.append(c); s.i += 1
    def bare(s):
        m = re.compile(r'[A-Za-z0-9_.+\-]+').match(s.t, s.i)
        s.i = m.end(); w = m.group()
        n = re.fullmatch(r'(-?\d+(?:\.\d+)?)([bslfdBSLFD]?)', w)
        if n:
            if '.' in n.group(1) or n.group(2) in ('f', 'd', 'F', 'D'): return float(n.group(1))
            return int(n.group(1))
        return {'true': True, 'false': False}.get(w, w)
    def obj(s):
        s.i += 1; o = {}
        while True:
            s.ws()
            if s.t[s.i] == '}': s.i += 1; return o
            k = s.string() if s.t[s.i] in '"\'' else s.bare()
            s.ws(); s.i += 1
            o[str(k)] = s.val(); s.ws()
            if s.t[s.i] == ',': s.i += 1
    def lst(s):
        s.i += 1; o = []; s.ws()
        if re.match(r'[BIL];', s.t[s.i:s.i + 2]): s.i += 2
        while True:
            s.ws()
            if s.t[s.i] == ']': s.i += 1; return o
            o.append(s.val()); s.ws()
            if s.t[s.i] == ',': s.i += 1

def _txt(path):
    return open(path, encoding='utf-8').read().replace('\\\n', '')

def grab(path, store, key):
    t = _txt(path)
    m = re.search(r'storage ' + re.escape(store) + ' ' + re.escape(key) + r' set value ', t)
    if not m: return None
    p = P(t); p.i = m.end()
    return p.val()

def guide_sections(fn):
    book = open(os.path.join(fn, 'book/pages.mcfunction'), encoding='utf-8').read().split('\n')
    s3 = next(i for i, l in enumerate(book) if l.startswith('data modify storage pnp:book p3 set value'))
    out = []
    for l in book[s3 + 1:]:
        if l == ']': break
        pg = json.loads(l.rstrip('\\').rstrip(','))
        for e in pg['e']:
            ex = e['k'].get('extra', [])
            hd = next((x for x in ex if x.get('bold')), None)
            if not hd or any('....' in x.get('text', '') for x in ex): continue
            parts = []
            for x in ex:
                if x is hd or 'sprite' in x: continue
                if 'keybind' in x: parts.append('[' + x['keybind'].replace('key.', '') + ']')
                else: parts.append(x.get('text', ''))
            out.append((hd['text'].strip(), re.sub(r'\s+', ' ', ''.join(parts).replace('\n', ' ')).strip()))
    return out

def card_visuals(rp):
    vis = {}
    for f in glob.glob(os.path.join(rp, 'assets/pnp/items/card/*.json')):
        cid = os.path.basename(f)[:-5]
        m = json.load(open(f, encoding='utf-8')).get('model', {})
        if m.get('type') != 'minecraft:model': continue
        ns, mp = m['model'].split(':')
        md = json.load(open(os.path.join(rp, 'assets', ns, 'models', mp + '.json'), encoding='utf-8'))
        mm = re.match(r'template_(\w+?)_(item|block)$', md.get('parent', '').split('/')[-1])
        vis[cid] = {'tk': mm.group(1) if mm else 'base', 'blk': bool(mm and mm.group(2) == 'block'),
                    'art': md.get('textures', {}).get('art')}
    return vis

def template_colors(rp):
    from PIL import Image
    cols = {}
    for f in glob.glob(os.path.join(rp, 'assets/pnp/textures/item/card/template*.png')):
        n = os.path.basename(f)[:-4]
        k = n[9:] if n != 'template' else 'base'
        im = Image.open(f).convert('RGBA')
        cols[k] = ['#%02x%02x%02x' % im.getpixel((5, 2))[:3], '#%02x%02x%02x' % im.getpixel((5, 8))[:3]]
    return cols

def width_fn(font):
    from fontTools.ttLib import TTFont
    f = TTFont(font); cmap = f.getBestCmap(); hm = f['hmtx']; px = f['head'].unitsPerEm / 12
    def w(s):
        return sum((hm[cmap[ord(ch)]][0] if ord(ch) in cmap else 600) for ch in s) / px - 1
    return w

def load(dp, rp, font):
    fn = os.path.join(dp, 'data/pnp/function')
    D = os.path.join(fn, 'card/defs.mcfunction'); I = os.path.join(fn, 'idea/defs.mcfunction')
    d = {k: grab(D, 'pnp:cards', k) for k in ['defs', 'recipes', 'free', 'pools', 'foods', 'ac', 'order', 'from_item', 'slot']}
    d['ideas'] = grab(I, 'pnp:cards', 'ideas'); d['card_idea'] = grab(I, 'pnp:cards', 'card_idea')
    d['unlock'] = grab(os.path.join(fn, 'idea/unlock_defs.mcfunction'), 'pnp:cards', 'unlock')
    d['cats'] = grab(os.path.join(fn, 'cardopedia/data.mcfunction'), 'pnp:pedia2', 'cat')
    try:
        d['guide'] = guide_sections(fn)
    except Exception:
        d['guide'] = []
    d['vis'] = card_visuals(rp); d['tcol'] = template_colors(rp); d['tw'] = width_fn(font)
    merge_additions(fn, d)
    d['quests'] = quest_data(fn)
    return d

if __name__ == '__main__':
    d = load(*sys.argv[1:4]); defs = d['defs']
    print('cards', len(defs), 'recipes', len(d['recipes']), 'ideas', len(d['ideas']), 'pools', len(d['pools']), 'ac', len(d['ac']), 'vis', len(d['vis']))
    for k in ['order', 'from_item', 'slot']:
        v = d.get(k); print(k, type(v).__name__, len(v) if v else 0, str(v)[:400])
    print('free', sorted(d['free'], key=lambda x: int(x[1:])))
    print('-- shop/pack/trophy/sell/gate/portal fields')
    for cid, c in defs.items():
        if c.get('kind') in ('shop', 'pack', 'trophy', 'sell', 'gate', 'portal', 'book'):
            print(' ', cid, {k: v for k, v in c.items() if k not in ('desc', 'l1', 'l2', 'l3', 'l4', 'sprite', 'atlas', 'ts', 'lw', 'tz', 'id')})
    print('-- pools')
    for k, p in d['pools'].items(): print(' ', k, p.get('t'), [(e['c'], e['w']) for e in p.get('e', [])])
    print('-- card_idea', d['card_idea'])
    print('-- unlock', json.dumps(d['unlock']))
    print('-- ideas', {k: (v.get('name'), [x['v'] for x in v.get('r', [])], {kk: vv for kk, vv in v.items() if kk not in ('name', 'r')}) for k, v in d['ideas'].items()})
    print('-- cats', {k: (v['n'], len(v['ids'])) for k, v in d['cats'].items()})
    allcat = [i for v in d['cats'].values() for i in v['ids']]
    print('not in cats:', sorted(set(defs) - set(allcat)), 'dupes:', sorted({i for i in allcat if allcat.count(i) > 1}))
    print('-- tcol', d['tcol'])
    vk = {}
    for cid in defs:
        v = d['vis'].get(cid)
        if not v: print('NO VIS', cid); continue
        if v['tk'] != defs[cid].get('kind'): vk.setdefault(defs[cid].get('kind') + '>' + v['tk'], []).append(cid)
    print('-- kind != template:', vk)
    print('-- extra vis:', sorted(set(d['vis']) - set(defs)))
    print('-- def keys:', sorted({k for c in defs.values() for k in c}))
    print('-- enemy sample', defs['evoker'], defs['villager'])
    print('-- longest titles:', sorted(((round(d['tw'](c['name'])), c['name']) for c in defs.values()), reverse=True)[:10])
    print('-- guide:', [h for h, _ in d['guide']])
    print('-- foods', d['foods'][:2], '-- ac', list(d['ac'].items())[:1])
    print('-- recipes', d['recipes'][0], d['recipes'][66], d['recipes'][156])


OPS = re.compile(r'^data modify storage pnp:cards ([a-z_]+)((?:\.[A-Za-z0-9_]+)*) (set|merge|append|prepend) value ', re.M)
CATOPS = re.compile(r'^data modify storage pnp:pedia2 cat((?:\.[A-Za-z0-9_]+)*) (set|merge|append|prepend) value ', re.M)
ADDC = re.compile(r'^function pnp:api/add_card \{id:"([a-z0-9_]+)"(?:,\s*category:"(c[0-9]+)")?', re.M)
ROOTS = ('defs', 'recipes', 'pools', 'free', 'ideas', 'unlock', 'card_idea', 'ac', 'foods', 'gates', 'taltxt', 'sptxt', 'vtool', 'smelt', 'steal')
LISTS = ('recipes', 'foods', 'steal')


def _put(node, keys, op, val):
    for k in keys[:-1]:
        if not isinstance(node, dict):
            return
        node = node.setdefault(k, {})
    if not isinstance(node, dict):
        return
    last = keys[-1]
    if op == 'set':
        node[last] = val
    elif op == 'merge' and isinstance(node.get(last), dict) and isinstance(val, dict):
        node[last].update(val)
    elif op == 'merge':
        node[last] = val
    else:
        lst = node.setdefault(last, [])
        if isinstance(lst, list):
            lst.insert(0, val) if op == 'prepend' else lst.append(val)


def merge_additions(fn, d):
    files = []
    for f in sorted(glob.glob(os.path.join(fn, '**', '*.mcfunction'), recursive=True)):
        rel = os.path.relpath(f, fn).replace(os.sep, '/')
        if not rel.startswith(('api/', 'debug/')):
            files.append((rel, _txt(f)))
    src = d.setdefault('src', {})
    for rel, t in files:
        for m in OPS.finditer(t):
            if m.group(1) in ROOTS and not m.group(2) and m.group(3) == 'set' and d.get(m.group(1)) is None:
                p = P(t); p.i = m.end(); d[m.group(1)] = p.val()
    for rel, t in files:
        for m in OPS.finditer(t):
            root, keys, op = m.group(1), [k for k in m.group(2).split('.') if k], m.group(3)
            if root not in ROOTS or (not keys and op == 'set'):
                continue
            try:
                p = P(t); p.i = m.end(); val = p.val()
            except Exception:
                continue
            cur = d.get(root)
            if cur is None:
                cur = d[root] = [] if root in LISTS else {}
            if not keys:
                if isinstance(cur, list):
                    if root == 'recipes' and isinstance(val, dict):
                        cur[:] = [r for r in cur if r.get('r') != val.get('r')]
                    cur.insert(0, val) if op == 'prepend' else cur.append(val)
                elif isinstance(cur, dict) and isinstance(val, dict):
                    cur.update(val)
                continue
            if root == 'defs' and len(keys) == 1 and op == 'set':
                src[keys[0]] = rel
            _put(cur, keys, op, val)
        for m in CATOPS.finditer(t):
            keys, op = [k for k in m.group(1).split('.') if k], m.group(2)
            if not keys:
                continue
            p = P(t); p.i = m.end(); val = p.val()
            _put(d['cats'], keys, op, val)
        for m in ADDC.finditer(t):
            cid, cat = m.group(1), m.group(2) or 'c1'
            c = d['cats'].setdefault(cat, {'n': cat, 'ids': []})
            if cid not in c.setdefault('ids', []):
                c['ids'].append(cid)
    known = {f['id'] for f in d.get('foods') or []}
    for cid, c in d['defs'].items():
        if c.get('kind') == 'food' and cid not in known:
            d['foods'].append({'id': cid, 'o': c.get('eat_order', c.get('food', 1))})


def _fallbacks(path):
    if not os.path.exists(path):
        return ''
    return open(path, encoding='utf-8').read()


def quest_data(fn):
    f = os.path.join(fn, 'quest_board/rework_defs.mcfunction')
    if not os.path.exists(f):
        return None
    chain = grab(f, 'pnp:qb', 'chain') or []
    chains = grab(f, 'pnp:qb', 'chains') or []
    main = []
    for q in chain:
        t = _fallbacks(os.path.join(fn, 'quest_board/pages', q['k'] + '.mcfunction'))
        fbs = re.findall(r'fallback:"((?:[^"\\]|\\.)*)"', t)
        goal = re.sub(r'\s*\(%s/\d+\)', '', fbs[1]).strip() if len(fbs) > 1 else ''
        main.append({'k': q['k'], 'name': q.get('nf', ''), 'goal': goal,
                     'reward': re.sub(r'^Reward:\s*', '', q.get('rf', '')), 'hint': re.sub(r'^Needs:\s*', '', q.get('h', ''))})
    side = []
    for s in chains:
        t = _fallbacks(os.path.join(fn, 'quest_board/pages', s + '.mcfunction'))
        tiers, name = [], ''
        for fb in re.findall(r'fallback:"((?:[^"\\]|\\.)*)"', t):
            tm = re.match(r'(.+?) (I|II|III): (.+)', fb)
            if tm and len(tiers) < 3:
                name = name or tm.group(1)
                tiers.append({'goal': re.sub(r'\s*\(%s/\d+\)', '', tm.group(3)).strip(), 'reward': ''})
            elif fb.startswith('Reward:') and tiers and not tiers[-1]['reward']:
                tiers[-1]['reward'] = re.sub(r'^Reward:\s*', '', fb)
        if tiers:
            side.append({'k': s, 'name': name, 'tiers': tiers})
    return {'main': main, 'side': side}
