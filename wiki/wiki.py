import os, re, sys, json, glob, html, math, shutil, hashlib, zipfile, urllib.request
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor
from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import extract

CACHE = os.path.join(HERE, 'cache')


def _arg(i, env, default):
    if len(sys.argv) > i and sys.argv[i]:
        return sys.argv[i]
    return os.environ.get(env, default)


def _open_pack(path, name, marker):
    if not os.path.exists(path):
        sys.exit(f"Can't find {path}")
    if os.path.isfile(path) and path.lower().endswith('.zip'):
        dst = os.path.join(CACHE, name)
        shutil.rmtree(dst, ignore_errors=True)
        with zipfile.ZipFile(path) as z:
            z.extractall(dst)
        path = dst
    if not os.path.isdir(os.path.join(path, marker)):
        subs = [os.path.join(path, d) for d in os.listdir(path) if os.path.isdir(os.path.join(path, d, marker))]
        if subs:
            path = subs[0]
    if not os.path.isdir(os.path.join(path, marker)):
        sys.exit(f"Can't find a {marker} folder in {path}")
    return path


REPO = os.path.dirname(HERE)
IN_REPO = os.path.isdir(os.path.join(REPO, 'data')) and os.path.exists(os.path.join(REPO, 'pack.mcmeta'))
DP = _open_pack(_arg(1, 'PNP_DP', REPO if IN_REPO else os.path.join(HERE, 'packs-and-pillagers.zip')), 'datapack', 'data')
RP = _open_pack(_arg(2, 'PNP_RP', os.path.join(HERE, 'packs-and-pillagers-resources.zip')), 'resourcepack', 'assets')
OUT = os.path.abspath(_arg(3, 'PNP_OUT', os.path.join(REPO, 'docs') if IN_REPO else os.path.join(HERE, 'site', 'packs-and-pillagers')))
FONT = os.environ.get('MC_FONT', os.path.join(CACHE, 'minecraft.ttf'))
MCTEX = 'https://raw.githubusercontent.com/misode/mcmeta/26.3-assets/assets/minecraft/textures/'
UI = 'https://raw.githubusercontent.com/lukejw12/uistuff/main/'
PP = UI + 'packs-%26-pillagers/'
FONT_URL = 'https://lukejw12.github.io/minecraft.ttf'
SITE = 'https://lukejw12.github.io/packs-and-pillagers/'
GH = 'https://github.com/lukejw12/packs-and-pillagers'
LINK = {
    'modrinth': 'https://modrinth.com/mod/packs-and-pillagers',
    'github': GH,
    'discord': 'https://discord.com/invite/YxRWAPUtDt',
    'kofi': 'https://ko-fi.com/itsjustluke',
    'issues': GH + '/issues',
    'license': GH + '/blob/main/datapack-license.txt',
    'addon_dp': GH + '/raw/main/example-addon/packs-and-pillagers-example-addon.zip',
    'addon_rp': GH + '/raw/main/example-addon/packs-and-pillagers-example-addon-resources.zip',
    'addon_md': GH + '/blob/main/example-addon/ADDING-ADDONS.md',
}
VERSION = '2.2'
GAME = 'Minecraft Java 26.3'

if not os.path.exists(FONT):
    os.makedirs(os.path.dirname(FONT), exist_ok=True)
    urllib.request.urlretrieve(FONT_URL, FONT)
D = extract.load(DP, RP, FONT)
defs = D['defs']
pools = D['pools']
unlock = D['unlock'] or {}
card_idea = D['card_idea'] or {}
recipes = sorted(D['recipes'], key=lambda r: r['r'])
R = {r['r']: r for r in recipes}
ideas = dict(D['ideas'])
VIS, TCOL, TW, AC, FOODS, CATS = D['vis'], D['tcol'], D['tw'], D['ac'], D['foods'], D['cats']
FN = os.path.join(DP, 'data/pnp/function')

GATES = D.get('gates') or {}
BASICS = set()
for _f in sorted(glob.glob(FN + '/**/*.mcfunction', recursive=True)):
    _rel = os.path.relpath(_f, FN)
    if _rel.startswith(('debug', 'admin')):
        continue
    _t = extract._txt(_f)
    for _m in re.finditer(r'r1:1b(?:\s*,\s*r\d+:1b)+', _t):
        BASICS |= {int(x) for x in re.findall(r'r(\d+):1b', _m.group(0))}
if not BASICS:
    BASICS = {1, 2, 3, 4, 5, 6}
    print('no start recipe list found, using', sorted(BASICS))

HIDE = {'war_horn'}


def esc(s):
    return html.escape(str(s), quote=True)


def norm(s):
    return re.sub(r'\s+', ' ', re.sub(r'[^a-z0-9 ]+', ' ', str(s).lower())).strip()


def slug(s):
    return re.sub(r'[^a-z0-9]+', '-', str(s).lower()).strip('-')


def nm(c):
    return defs[c]['name'] if c in defs else c.replace('_', ' ').title()


def iname(i):
    return ideas[i]['name'].replace('\u2726', '').strip() if i in ideas else nm(i)


def cname(c):
    if c in ideas:
        return iname(c) + ' Idea'
    if c.startswith('shop_'):
        return nm(c) + ' Shop'
    if c == 'player_portal':
        return 'PvP Portal'
    return nm(c)


def join_and(xs, word='and'):
    xs = list(xs)
    if len(xs) <= 1:
        return ''.join(xs)
    if len(xs) == 2:
        return xs[0] + ' ' + word + ' ' + xs[1]
    return ', '.join(xs[:-1]) + ', ' + word + ' ' + xs[-1]


def sell_text(q):
    whole, rest = divmod(int(q), 4)
    parts = []
    if whole:
        parts.append(f'{whole} emerald' + ('' if whole == 1 else 's'))
    if rest:
        parts.append(f'{rest} shard' + ('' if rest == 1 else 's'))
    return ' and '.join(parts) or '0'


def fmt_time(t):
    v = t / 10
    return (str(int(v)) if v == int(v) else f'{v:g}') + 's'


def pct(x):
    v = x * 100
    return f'{v:.0f}%' if v >= 0.995 else '<1%'


_allcat = {i for v in CATS.values() for i in v.get('ids', [])}
HIDE |= {c for c, x in defs.items() if x.get('kind') == 'quest' and c not in _allcat}
CAT_KEYS = [k for k in sorted(CATS, key=lambda k: int(k[1:]) if k[1:].isdigit() else 99) if CATS[k].get('ids')]
CAT_IDS = {k: [i for i in CATS[k]['ids'] if i in defs and i not in HIDE] for k in CAT_KEYS}
_incat = {i for v in CAT_IDS.values() for i in v}
for _i, _d in defs.items():
    if _d.get('kind') == 'idea' and _i not in _incat and _i not in HIDE and 'c8' in CAT_IDS:
        CAT_IDS['c8'].append(_i)
_seen = {i for v in CAT_IDS.values() for i in v}
_more = sorted([c for c in defs if c not in _seen and c not in HIDE], key=lambda c: (defs[c].get('kind', ''), cname(c)))
if _more:
    CAT_KEYS.append('more')
    CAT_IDS['more'] = _more
CAT_NAME = {k: CATS[k].get('n', k) for k in CAT_KEYS if k in CATS}
CAT_NAME['more'] = 'More'
CAT_KIND = {'c1': 'res', 'c2': 'food', 'c3': 'node', 'c4': 'struct', 'c5': 'unit', 'c6': 'weapon',
            'c7': 'enemy', 'c8': 'idea', 'c9': 'gate', 'c10': 'shop', 'more': 'base'}
CAT_OF = {i: k for k, v in CAT_IDS.items() for i in v}
BROWSE = [i for k in CAT_KEYS for i in CAT_IDS[k]]
IDEA_IDS = list(CAT_IDS['c8'])

TEXSIZE = {}
EXTRA_TEX = [
    'minecraft:item/emerald', 'minecraft:gui/sprites/hud/heart/full', 'minecraft:item/clock_00',
    'minecraft:item/item_frame', 'minecraft:item/map', 'minecraft:item/book', 'minecraft:item/lead',
    'pnp:item/fx/badge_1', 'pnp:item/fx/badge_2', 'pnp:item/fx/badge_3', 'pnp:item/fx/badge_4', 'pnp:item/fx/badge_5',
    'pnp:item/fx/slot_t', 'pnp:item/fx/slot_a', 'pnp:item/fx/slot_s', 'pnp:item/fx/port_in', 'pnp:item/fx/port_out',
    'pnp:item/effect/poison', 'pnp:item/effect/slowness', 'pnp:item/effect/mining_fatigue',
    'pnp:item/effect/weakness', 'pnp:item/effect/blindness',
    'pnp:font/menu_single', 'pnp:font/menu_multi', 'pnp:font/menu_shared', 'pnp:font/menu_solo', 'pnp:font/menu_pvp',
    'pnp:font/hud_sun', 'pnp:font/hud_moon', 'pnp:item/table_leaf',
]


def tex_path(tex):
    ns, p = tex.split(':', 1) if ':' in tex else ('minecraft', tex)
    return f'tex/{ns}/{p}.png'


def _fetch(tex):
    ns, p = tex.split(':', 1) if ':' in tex else ('minecraft', tex)
    if ns == 'minecraft':
        src = os.path.join(CACHE, p + '.png')
        if not os.path.exists(src):
            os.makedirs(os.path.dirname(src), exist_ok=True)
            try:
                with urllib.request.urlopen(MCTEX + p + '.png', timeout=40) as r:
                    data = r.read()
                with open(src, 'wb') as fh:
                    fh.write(data)
            except Exception as e:
                return tex, None, str(e)
    else:
        src = os.path.join(RP, 'assets', ns, 'textures', p + '.png')
        if not os.path.exists(src):
            return tex, None, 'not in the resource pack'
    im = Image.open(src)
    im.load()
    w, h = im.size
    if h > w:
        im = im.crop((0, 0, w, w))
    if 'badge_' in p:
        im = im.convert('RGBA')
        bb = im.getchannel('A').getbbox()
        if bb:
            im = im.crop(bb)
    return tex, im, None


TEXIMG = {}
ATLAS = {}
ATLAS_FILES = {}


def fetch_textures(texes):
    with ThreadPoolExecutor(16) as ex:
        for tex, im, err in ex.map(_fetch, sorted(set(texes))):
            if im is not None:
                TEXIMG[tex] = im
                TEXSIZE[tex] = im.size[0]
            else:
                print('texture missing:', tex, err)


def build_atlases():
    by = defaultdict(list)
    for tex, im in TEXIMG.items():
        by[max(im.size)].append(tex)
    for s, texes in sorted(by.items()):
        texes.sort()
        cols = max(1, math.ceil(math.sqrt(len(texes))))
        rows = math.ceil(len(texes) / cols)
        sheet = Image.new('RGBA', (cols * s, rows * s), (0, 0, 0, 0))
        for n, tex in enumerate(texes):
            im = TEXIMG[tex].convert('RGBA')
            cx, cy = n % cols, n // cols
            sheet.paste(im, (cx * s + (s - im.size[0]) // 2, cy * s + (s - im.size[1]) // 2))
            px = 0 if cols == 1 else cx / (cols - 1) * 100
            py = 0 if rows == 1 else cy / (rows - 1) * 100
            ATLAS[tex] = (f'a{s}', f'{px:.4g}% {py:.4g}%')
        sheet.save(os.path.join(OUT, 'assets', f'a{s}.png'), optimize=True)
        ATLAS_FILES[f'a{s}'] = (cols, rows, s)


def sprite(tex, cls=''):
    a = ATLAS.get(tex)
    if not a:
        return ''
    return f'<i class="sp {a[0]}{(" " + cls) if cls else ""}" style="background-position:{a[1]}"></i>'


def sprite_css(sel, tex):
    a = ATLAS.get(tex)
    if not a:
        return ''
    cols, rows, s = ATLAS_FILES[a[0]]
    return (f'{sel}{{background-image:url({a[0]}.png);background-size:{cols * 100}% {rows * 100}%;'
            f'background-position:{a[1]};background-repeat:no-repeat}}')

def make_bg(path):
    src_p = os.path.join(CACHE, 'block/deepslate.png')
    if not os.path.exists(src_p):
        os.makedirs(os.path.dirname(src_p), exist_ok=True)
        with urllib.request.urlopen(MCTEX + 'block/deepslate.png', timeout=40) as r:
            data = r.read()
        with open(src_p, 'wb') as fh:
            fh.write(data)
    src = Image.open(src_p).convert('RGB')
    n = src.size[0]
    px = [src.getpixel((x, y)) for y in range(n) for x in range(n)]
    mean = [sum(p[i] for p in px) / len(px) for i in range(3)]
    base, k = (38, 40, 45), .2
    t = Image.new('RGB', (n, n))
    t.putdata([tuple(max(0, min(255, int(base[i] + (p[i] - mean[i]) * k))) for i in range(3)) for p in px])
    t.resize((n * 4, n * 4), Image.NEAREST).save(path, optimize=True)


def write_assets():
    os.makedirs(os.path.join(OUT, 'assets'), exist_ok=True)
    build_atlases()
    css = open(os.path.join(HERE, 'style.css'), encoding='utf-8').read()
    ccss = open(os.path.join(HERE, 'card-style.css'), encoding='utf-8').read()
    kinds = '\n'.join(f'.k-{k}{{--hd:{h};--bd:{b}}}' for k, (h, b) in sorted(TCOL.items()))
    sheets = '\n'.join(f'.{a}{{background-image:url({a}.png);background-size:{c * 100}% {r * 100}%'
                       + (';image-rendering:auto' if s > 32 else '') + '}' for a, (c, r, s) in sorted(ATLAS_FILES.items()))
    shard = art_of('emerald_shard')[0] if 'emerald_shard' in defs else None
    fixed = '\n'.join(x for x in (sprite_css('.cs::before', 'minecraft:item/emerald'),
                                   sprite_css('.cs.so::before', shard),
                                   sprite_css('.cs .sd', shard),
                                   sprite_css('.ch::before', 'minecraft:gui/sprites/hud/heart/full')) if x)
    with open(os.path.join(OUT, 'assets/card-style.css'), 'w', encoding='utf-8') as fh:
        fh.write(ccss.rstrip() + '\n' + kinds + '\n' + sheets + '\n' + fixed + '\n')
    with open(os.path.join(OUT, 'assets/style.css'), 'w', encoding='utf-8') as fh:
        fh.write(css.rstrip() + '\n' + sprite_css('.results .pg', 'minecraft:item/book') + '\n')
    shutil.copy(os.path.join(HERE, 'site.js'), os.path.join(OUT, 'assets/site.js'))
    make_bg(os.path.join(OUT, 'assets/deepslate.png'))
    shutil.copy(FONT, os.path.join(OUT, 'assets', 'minecraft.ttf'))


def tk_of(c):
    v = VIS.get(c)
    if v and v['tk'] in TCOL:
        return v['tk']
    k = defs.get(c, {}).get('kind', 'base')
    return k if k in TCOL else 'base'


def art_of(c):
    v = VIS.get(c)
    if v and v.get('art') and v['art'] in TEXSIZE:
        return v['art'], v['blk']
    return None, False


def hi(tex):
    return TEXSIZE.get(tex, 16) > 32


def card(c, rel='', u=None, link=True, cls='', style='', label=True, attrs='', art_as=None):
    if c not in defs or c in HIDE:
        return ''
    a = ''
    if u:
        a += f' data-u="{u}"'
    if not link:
        a += ' data-link="0"'
    if cls:
        a += f' data-cls="{esc(cls)}"'
    if not label:
        a += ' data-label="0"'
    if art_as and art_as[0] in ATLAS:
        at = ATLAS[art_as[0]]
        a += f' data-art="{at[0]}|{at[1]}|{1 if art_as[1] else 0}"'
    return f'<i data-card="{c}"{a}{attrs}></i>'


def card_face(c):
    d = defs[c]
    name = d.get('name', c)
    tw = TW(name)
    f = {'name': name, 'title': cname(c), 'frame': tk_of(c), 'titleScale': round(min(1.0, 42.0 / tw) if tw > 0 else 1.0, 3)}
    art, blk = art_of(c)
    if art and art in ATLAS:
        f['art'] = [ATLAS[art][0], ATLAS[art][1], 1 if blk else 0]
    if d.get('sell'):
        whole, rest = divmod(int(d['sell']), 4)
        if whole:
            f['sell'] = whole
        if rest:
            f['shards'] = rest
    if d.get('hp'):
        f['health'] = d['hp']
    return f


def icon(c, rel=''):
    art, blk = art_of(c)
    if not art:
        return ''
    return sprite(art, 'ico')


def texicon(tex, rel='', cls='ico'):
    if tex not in TEXSIZE:
        return ''
    return sprite(tex, cls)


def clink(c, rel='', text=None):
    t = esc(text or cname(c))
    if c not in defs or c in HIDE:
        return t
    return f'<a class="cl" href="{rel}card.html#{c}">{icon(c, rel)}{t}</a>'


VARIANT = set(range(91, 105)) | set(range(107, 121)) | set(range(123, 137))
STATIONS = ('crafting_table', 'furnace', 'farm', 'house', 'pen', 'trading_post', 'brewing_stand', 'library')
ARROW = ('<svg class="arw" viewBox="0 0 21 16" aria-hidden="true"><path d="M0 5H14V1'
         + 'h1v1' * 7 + 'h-1v1' * 7 + 'V10H0z"/></svg>')


def stack_order(rr):
    ins = rr['in']
    il = [x['c'] for x in rr.get('il', [])] or list(ins)
    root = next((c for c in il if c in STATIONS or defs.get(c, {}).get('kind') in ('struct', 'node', 'animal')), None)
    if root is None:
        root = 'villager' if 'villager' in ins else il[0]
    left = dict(ins)
    left[root] -= 1
    out = [root]
    for c in il:
        if c == 'villager':
            continue
        out += [c] * left.get(c, 0)
        left[c] = 0
    out += ['villager'] * left.get('villager', 0)
    return out


def pool_items(p):
    pd = pools[p]
    agg = Counter()
    for e in pd['e']:
        agg[e['c']] += e['w']
    return [(c, w / pd['t']) for c, w in sorted(agg.items(), key=lambda x: (-x[1], cname(x[0])))]


def pool_list(p, rel='', limit=None, cls='pl'):
    lim = f' data-limit="{limit}"' if limit else ''
    return f'<ul class="{cls}" data-pool="{p}"{lim}></ul>'


SRC = defaultdict(list)
START = set(BASICS) | {int(k[1:]) for k in (D['free'] or {})}
for _r in START:
    SRC[_r].append(('start', None))
for _i, _v in ideas.items():
    for _x in _v.get('r', []):
        SRC[_x['v']].append(('idea', _i))
for _c, _rs in unlock.items():
    for _r in _rs:
        SRC[_r].append(('card', _c))
GATE_OF = {'portal_trial': 'gate_trial', 'portal_city': 'gate_city',
           'portal_monument': 'gate_monument', 'portal_mansion': 'gate_mansion'}
for _rr in recipes:
    for _o in _rr['out']:
        if _o in GATE_OF:
            SRC[_rr['r']].append(('gate', GATE_OF[_o]))


def tok(c, text=None):
    if c not in defs or c in HIDE:
        return esc(text or cname(c))
    return f'[[{c}|{text}]]' if text else f'[[{c}]]'


def learn_tokens(r):
    srcs = list(dict.fromkeys(SRC.get(r, [])))
    if not srcs:
        return "Can't be learned yet."
    if any(s[0] == 'start' for s in srcs):
        return 'Known from the start.'
    ids = [x for k, x in srcs if k == 'idea']
    crd = [x for k, x in srcs if k == 'card']
    gts = [x for k, x in srcs if k == 'gate']
    bits = []
    if ids:
        bits.append('from the ' + ' or the '.join(tok(x) for x in ids))
    if crd:
        bits.append('by getting your first ' + ' or '.join(tok(x) for x in crd))
    if gts:
        bits.append('by winning a run through the ' + ' or the '.join(tok(x) for x in gts))
    return 'Learned ' + ', or '.join(bits) + '.'


def recipe_data(r):
    rr = R[r]
    used = Counter(rr.get('use', []))
    ut = ('Uses up ' + join_and((f'{n}&times; {esc(cname(c))}' if n > 1 else esc(cname(c))) for c, n in used.items())) if used else 'Nothing gets used up'
    outs = [['@', o[1:]] if o.startswith('@') else [o, n] for o, n in Counter(rr['out']).items()]
    names = norm(' '.join(cname(c) for c in dict.fromkeys(list(rr['in']) + [o for o in rr['out'] if not o.startswith('@')])))
    return {'stack': stack_order(rr), 'makes': outs, 'time': fmt_time(rr['time']), 'usesUp': ut, 'learn': learn_tokens(r), 'search': names}


def tiles(rs, rel=''):
    return '<div class="rgrid" data-rs="' + ','.join(str(r) for r in rs if r in R) + '"></div>'


def inputs_text(r):
    rr = R[r]
    il = [(x['c'], x['n']) for x in rr.get('il', [])] or list(rr['in'].items())
    return join_and((f'{n}&times; {esc(cname(c))}' if n > 1 else esc(cname(c))) for c, n in il)


def out_label(r, rel=''):
    rr = R[r]
    parts = []
    for o in dict.fromkeys(rr['out']):
        if o.startswith('@'):
            node = next((c for c in rr['in'] if defs.get(c, {}).get('kind') == 'node'), None)
            if node is None:
                src = next((c for c in rr['in'] if c != 'villager'), None)
                parts.append(('a random card from the ' + clink(src, rel)) if src else 'a random card')
                continue
            tools = [c for c in rr['in'] if c not in ('villager', node)]
            parts.append(clink(node, rel) + ' trips' + ((' with ' + join_and(clink(t, rel) for t in tools)) if tools else ''))
        else:
            parts.append(clink(o, rel))
    return join_and(parts)


def out_label_tokens(r):
    rr = R[r]
    parts = []
    for o in dict.fromkeys(rr['out']):
        if o.startswith('@'):
            node = next((c for c in rr['in'] if defs.get(c, {}).get('kind') == 'node'), None)
            if node is None:
                src = next((c for c in rr['in'] if c != 'villager'), None)
                parts.append(('a random card from the ' + tok(src)) if src else 'a random card')
                continue
            tools = [c for c in rr['in'] if c not in ('villager', node)]
            parts.append(tok(node) + ' trips' + ((' with ' + join_and(tok(t) for t in tools)) if tools else ''))
        else:
            parts.append(tok(o))
    return join_and(parts)


POOL_SRC = defaultdict(list)
for _rr in recipes:
    for _o in _rr['out']:
        if _o.startswith('@'):
            _node = next((c for c in _rr['in'] if defs.get(c, {}).get('kind') == 'node'), None)
            _node = _node or next((c for c in _rr['in'] if c != 'villager'), None)
            if _node and _node not in POOL_SRC[_o[1:]]:
                POOL_SRC[_o[1:]].append(_node)
for _c, _d in defs.items():
    if _d.get('kind') == 'pack' and _d.get('pool'):
        POOL_SRC[_d['pool']].append(_c)
FOUND = defaultdict(list)
for _p in pools:
    for _c, _x in pool_items(_p):
        FOUND[_c].append((_p, _x))


def found_items(c, rel=''):
    rows = []
    for p, x in FOUND.get(c, []):
        for s in POOL_SRC.get(p, []):
            extra = ' with an Iron Pickaxe' if p == 'cave_rich' else (' with a Stone Pickaxe' if p == 'cave' else '')
            rows.append(f'<li>{clink(s, rel)}{extra}<span class="pc">{pct(x)}</span></li>')
    return ''.join(rows)


MADE = defaultdict(list)
USED = defaultdict(list)
for _rr in recipes:
    if _rr['r'] in VARIANT:
        continue
    for _o in dict.fromkeys(_rr['out']):
        if not _o.startswith('@'):
            MADE[_o].append(_rr['r'])
    for _c in _rr['in']:
        USED[_c].append(_rr['r'])
DROPPED = defaultdict(list)
for _c, _d in defs.items():
    for _l in (_d.get('loot') or []):
        if _c not in DROPPED[_l]:
            DROPPED[_l].append(_c)
REVEAL = defaultdict(list)
for _c, _i in card_idea.items():
    REVEAL[_i].append(_c)

def loot_of(k):
    f = os.path.join(FN, 'gateway', 'loot', k + '.mcfunction')
    if not os.path.exists(f):
        return []
    return [c for c in dict.fromkeys(re.findall(r'card:"([a-z0-9_]+)"', open(f, encoding='utf-8').read())) if c in defs]


GATE_INFO = []
for _k, _g in GATES.items():
    _card = 'gate_' + _k
    if _card not in defs:
        continue
    _w = _g.get('waves') or [[]]
    _boss = _w[-1][0] if _w and _w[-1] else None
    _portal = 'portal_' + _k if 'portal_' + _k in defs else None
    _key = None
    if _portal:
        _pr = next((r for r in recipes if _portal in r['out']), None)
        if _pr:
            _key = next((c for c in _pr['in'] if c not in ('villager', 'cobblestone', 'diamond')), None)
    GATE_INFO.append((_card, _g.get('name', _k), _boss, _portal, _key, loot_of(_k)))
CAVES_LOOT = loot_of('caves')
MONSTER_LOOT = [c for c in loot_of('monstrosity') if c != 'monstrosity_helmet']
LOOT = defaultdict(list)
for _g, _pl, _b, _po, _k, _loot in GATE_INFO:
    for _c in _loot:
        LOOT[_c].append(_g)
for _c in CAVES_LOOT:
    LOOT[_c].append('redstone_caves')
for _c in ['monstrosity_helmet'] + MONSTER_LOOT:
    LOOT[_c].append('redstone_monstrosity')

WAVES = {}


def _enemies(o, acc):
    if isinstance(o, dict):
        for v in o.values():
            _enemies(v, acc)
    elif isinstance(o, list):
        for v in o:
            _enemies(v, acc)
    elif isinstance(o, str) and o in defs and defs[o].get('kind') == 'enemy':
        acc.append(o)


if isinstance(GATES, dict):
    for _k, _v in GATES.items():
        _acc = []
        _enemies(_v, _acc)
        WAVES[_k] = list(dict.fromkeys(_acc))
PLACE = {k: 'the ' + g.get('name', k) for k, g in GATES.items()}

WHERE = {
    'zombie': ['Night', 'Cave trips'], 'skeleton': ['Night', 'Cave trips'], 'spider': ['Night'], 'creeper': ['Night'],
    'pillager': ['Raids'], 'vindicator': ['Raids'], 'ravager': ['Big raids'], 'evoker': ['Raids from raid 5'],
    'vex': ['Called by Evokers'], 'illusioner': ['Raid 10', 'Boss of the Woodland Mansion'],
    'breeze': ['Boss of the Trial Chambers'], 'warden': ['Boss of the Deep Dark'],
    'elder_guardian': ['Boss of the Ocean Monument'], 'redstone_cube': ['The Redstone Caves', 'The Monstrosity fight'],
    'redstone_golem': ['The Redstone Caves'], 'redstone_monstrosity': ['Summoned at the end of Chapter 1'],
    'invader': ['PvP'], 'invader_golem': ['PvP'], 'invader_wolf': ['PvP'],
}


WHERE.update({
    'witch': ['Night, once you know a Swamp'],
    'wither': ['Summoned with 3 Wither Skeleton Skulls on 4 Soul Sand'],
    'zoglin': ['Hoglins taken through the portal'],
    'ghast': ['Ghast Storms on Nether nights'],
    'hoglin': ['Hoglin Stampedes on Nether nights'],
})


def where_of(c):
    w = list(WHERE.get(c, []))
    for k, es in WAVES.items():
        if k == 'monstrosity' or c not in es:
            continue
        place = PLACE.get(k, k.replace('_', ' ').title())
        if not any(place.replace('the ', '') in x for x in w):
            w.append('Waves in ' + place)
    for p, x in FOUND.get(c, []):
        for s in POOL_SRC.get(p, []):
            if defs.get(s, {}).get('kind') == 'node':
                lab = cname(s) + ' trips'
                if lab not in w:
                    w.append(lab)
    return join_and(w)

WORLD = {
    'oak_log': 'Chop any kind of log', 'cobblestone': 'Mine stone or deepslate', 'coal': 'Mine coal ore',
    'iron_ore': 'Mine iron ore', 'gold_ore': 'Mine gold ore', 'copper_ore': 'Mine copper ore',
    'diamond': 'Mine diamond ore', 'wheat': 'Harvest wheat', 'pumpkin': 'Harvest pumpkins',
    'cod': 'Go fishing', 'treasure_map': 'Go fishing, now and then',
}
CAPTURE = ['villager', 'sheep', 'cow', 'chicken', 'pig', 'wolf']

def _ends(sfx, skip=()):
    return [c for c, x in defs.items() if c.endswith(sfx) and not c.endswith(skip) and x.get('kind') in ('tool', 'weapon')]


SPECS = [
    (_ends('_pickaxe'), 'Miner', 'Mines twice as fast'),
    (_ends('_axe', ('_pickaxe',)), 'Lumberjack', 'Chops twice as fast'),
    (_ends('_hoe'), 'Farmer', 'Farms twice as fast'),
    ([c for c in ('shears',) if c in defs], 'Shepherd', 'Tends animals twice as fast'),
    ([c for c in ('fishing_rod',) if c in defs], 'Fisher', 'Fishes twice as fast'),
    (_ends('_sword'), 'Swordsman', 'Hits harder and is tougher'),
    ([c for c in ('bow', 'crossbow', 'trident') if c in defs], 'Archer', 'Shoots from range'),
    (_ends('shield'), 'Guard', 'Draws attacks and blocks some'),
    ([c for c in ('mace',) if c in defs], 'Brute', 'Hits everything around the target'),
    ([c for c in ('spear',) if c in defs], 'Lancer', 'Hits from further away'),
]
SPEC_OF = {t: (job, eff) for ts, job, eff in SPECS for t in ts}
TALIS = {
    'bone': '+1 damage against the undead', 'prismarine_shard': 'Enemies that hit the carrier get hurt',
    'echo_shard': 'Each hit also strikes another enemy', 'pumpkin': "The carrier can't be blinded",
    'totem': 'The carrier survives one deadly blow', 'clock': 'The carrier works a little faster',
    'compass': 'The carrier explores twice as fast', 'rabbit_foot': 'The carrier dodges more attacks',
}
for _c in (D.get('taltxt') or {}):
    if _c in defs and _c not in TALIS:
        TALIS[_c] = defs[_c].get('desc', '')
TRAITS = {'ranged': 'Ranged', 'beam': 'Beam attack', 'knock': 'Knockback', 'fast': 'Fast',
          'undead': 'Undead (burns at dawn)', 'boss': 'Boss'}


def md(s, rel=''):
    out = []
    for p in re.split(r'(`[^`]+`)', s):
        if len(p) > 1 and p.startswith('`') and p.endswith('`'):
            out.append('<code>' + esc(p[1:-1]) + '</code>')
            continue
        p = p.replace(' & ', ' &amp; ')
        p = re.sub(r'\[\[([a-z0-9_]+)(?:\|([^\]]+))?\]\]', lambda m: clink(m.group(1), rel, m.group(2)), p)
        p = re.sub(r'\[k:([^\]]+)\]', lambda m: '<kbd>' + m.group(1) + '</kbd>', p)
        p = re.sub(r'\[p:([^|\]]+)\|([^\]]+)\]', lambda m: f'<a href="{rel}{m.group(1)}">{m.group(2)}</a>', p)
        p = re.sub(r'\[x:([a-z_]+)\|([^\]]+)\]', lambda m: f'<a href="{LINK[m.group(1)]}">{m.group(2)}</a>', p)
        p = re.sub(r'\*\*([^*]+)\*\*', r'<strong>\1</strong>', p)
        out.append(p)
    return ''.join(out)


def h2(t):
    plain = re.sub(r'<[^>]+>', '', t)
    return f'<h2 id="{slug(plain)}">{md(t)}</h2>'


def h3(t):
    plain = re.sub(r'<[^>]+>', '', t)
    return f'<h3 id="{slug(plain)}">{md(t)}</h3>'


def doc(text, rel=''):
    out = []
    for b in re.split(r'\n[ \t]*\n', text.strip('\n')):
        b = b.strip('\n')
        lines = [l.strip() for l in b.split('\n')]
        first = lines[0]
        if first.startswith('```'):
            raw = b.split('\n')
            out.append('<pre><code>' + esc('\n'.join(raw[1:-1])) + '</code></pre>')
        elif first.startswith('## '):
            out.append(h2(first[3:]))
        elif first.startswith('### '):
            out.append(h3(first[4:]))
        elif first.startswith('@tiles'):
            out.append(tiles([int(x) for x in first.split()[1:]], rel))
        elif first.startswith('> '):
            body = ' '.join(l[2:] if l.startswith('> ') else l for l in lines)
            out.append('<p class="note">' + md(body, rel) + '</p>')
        elif all(l.startswith('- ') for l in lines):
            out.append('<ul>' + ''.join('<li>' + md(l[2:], rel) + '</li>' for l in lines) + '</ul>')
        elif all(re.match(r'\d+\. ', l) for l in lines):
            items = [re.sub(r'^\d+\. ', '', l) for l in lines]
            out.append('<ol>' + ''.join('<li>' + md(x, rel) + '</li>' for x in items) + '</ol>')
        elif first.startswith('<'):
            out.append(b)
        else:
            out.append('<p>' + md(' '.join(lines), rel) + '</p>')
    return '\n'.join(out)


def table(head, rows, cls='tbl'):
    th = ''.join(f'<th scope="col">{h}</th>' for h in head)
    trs = ''.join('<tr>' + ''.join(f'<td>{c}</td>' for c in row) + '</tr>' for row in rows)
    return f'<div class="tw"><table class="{cls}"><thead><tr>{th}</tr></thead><tbody>{trs}</tbody></table></div>'


NAV = [
    ('Start Here', [('index.html', 'Home'), ('getting-started.html', 'Getting Started'), ('table.html', 'The Table')]),
    ('Look It Up', [('cards.html', 'Cards'), ('recipes.html', 'Recipes'), ('ideas.html', 'Ideas'),
                    ('packs.html', 'Packs & Shops'), ('quests.html', 'Quests')]),
    ('How It Works', [('supper.html', 'Supper & Food'), ('villagers.html', 'Villagers'), ('combat.html', 'Night & Combat'),
                      ('machines.html', 'Machines'), ('gateways.html', 'Gateways & Bosses'), ('nether.html', 'The Nether'),
                      ('world.html', 'Out in the World'),
                      ('multiplayer.html', 'Multiplayer & PvP')]),
    ('Make Your Own', [('addons.html', 'Addons')]),
]
MENU_SVG = '<svg viewBox="0 0 9 7" aria-hidden="true"><path d="M0 0h9v1H0zM0 3h9v1H0zM0 6h9v1H0z"/></svg>'
SEARCH = []


def section_list(body):
    out = []
    for i, s in re.findall(r'<h2 id="([^"]+)">(.*?)</h2>', body):
        s = re.sub(r'<span class="n">.*?</span>', '', s)
        out.append((i, re.sub(r'<[^>]+>', '', s).strip()))
    return out


def footer(rel):
    soc = [('discord', 'Discord', UI + 'icon/discord.png'), ('kofi', 'Ko-fi', UI + 'icon/kofi.png'),
           ('github', 'GitHub', UI + 'icon/github.png'), ('modrinth', 'Modrinth', PP + 'icon.png')]
    links = ''.join(f'<a class="soc" href="{LINK[k]}"><img src="{src}" alt="" width="28" height="28" loading="lazy">{t}</a>'
                    for k, t, src in soc)
    return (f'<div class="fin">{links}</div>'
            f'<p>Packs &amp; Pillagers is made by ItsJustLuke_. This wiki covers version {VERSION} for {GAME}.</p>'
            f'<p class="dim">Not an official Minecraft product. Not approved by or associated with Mojang or Microsoft. '
            f'<a href="{LINK["license"]}">Data pack license</a></p>')


def layout(path, title, body, desc, rel, scripts=()):
    secs = section_list(body)
    nav = ''
    for g, items in NAV:
        lis = ''
        for p, t in items:
            on = p == path or (path == 'card.html' and p == 'cards.html')
            cls = ' class="on"' if on else ''
            cur = ' aria-current="page"' if p == path else ''
            sub = ''
            if p == path and secs:
                sub = '<ul class="sub">' + ''.join(f'<li><a href="#{i}">{s}</a></li>' for i, s in secs) + '</ul>'
            lis += f'<li{cls}><a href="{rel}{p}"{cur}>{esc(t)}</a>{sub}</li>'
        nav += f'<p class="g">{esc(g)}</p><ul>{lis}</ul>'
    full = 'Packs & Pillagers Wiki' if path == 'index.html' else f'{title} | Packs & Pillagers Wiki'
    extra = ''.join(f'<script src="{rel}{s}" defer></script>\n' for s in scripts)
    return f'''<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{esc(full)}</title>
<meta name="description" content="{esc(desc)}">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Packs &amp; Pillagers Wiki">
<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(desc)}">
<meta property="og:image" content="{PP}icon.png">
<meta property="og:url" content="{SITE}{path}">
<meta name="theme-color" content="#1b1c20">
<link rel="icon" type="image/png" href="{PP}icon.png">
<link rel="preload" href="{rel}assets/minecraft.ttf" as="font" type="font/ttf" crossorigin>
<link rel="stylesheet" href="{rel}assets/card-style.css">
<link rel="stylesheet" href="{rel}assets/style.css">
</head>
<body data-root="{rel}">
<a class="skip" href="#main">Skip to content</a>
<header class="top">
<button class="menu" type="button" aria-label="Menu" aria-expanded="false">{MENU_SVG}</button>
<a class="brand" href="{rel}index.html"><img src="{PP}icon.png" alt="" width="36" height="36"><span>Packs &amp; Pillagers Wiki</span></a>
<div class="search" role="search"><input type="search" placeholder="Search cards and pages" aria-label="Search cards and pages" autocomplete="off" spellcheck="false"><div class="results" hidden></div></div>
</header>
<div class="wrap">
<nav class="side" aria-label="Wiki pages">{nav}</nav>
<div class="scrim"></div>
<main id="main">
{body}
</main>
</div>
<footer class="foot">{footer(rel)}</footer>
<script src="{rel}assets/search.js" defer></script>
<script src="{rel}assets/cards.js" defer></script>
{extra}<script src="{rel}assets/site.js" defer></script>
</body>
</html>
'''


def write_page(path, title, body, desc='', search=True, scripts=()):
    rel = '../' * path.count('/')
    fp = os.path.join(OUT, path)
    os.makedirs(os.path.dirname(fp), exist_ok=True)
    with open(fp, 'w', encoding='utf-8') as fh:
        fh.write(layout(path, title, body, desc, rel, scripts))
    if search:
        SEARCH.append({'n': title, 'u': path, 'k': 'Page', 't': 'p'})
        for i, s in section_list(body):
            SEARCH.append({'n': html.unescape(s), 'u': f'{path}#{i}', 'k': title, 't': 'p'})


def write_search():
    rows = ',\n'.join('  ' + json.dumps(e, ensure_ascii=False) for e in SEARCH)
    with open(os.path.join(OUT, 'assets/search.js'), 'w', encoding='utf-8') as fh:
        fh.write('window.PNP_SEARCH = [\n' + rows + '\n];\n')


def _j(v):
    return json.dumps(v, ensure_ascii=False)


def _fmt(v, pad):
    s = _j(v)
    if len(s) <= 120 or not isinstance(v, list) or not v:
        return s
    inner = pad + '  '
    if all(not isinstance(x, (list, dict)) for x in v):
        rows, line = [], []
        for x in v:
            t = _j(x)
            if line and len(', '.join(line + [t])) > 100:
                rows.append(inner + ', '.join(line))
                line = []
            line.append(t)
        rows.append(inner + ', '.join(line))
    else:
        rows = [inner + _j(x) for x in v]
    return '[\n' + ',\n'.join(rows) + '\n' + pad + ']'


def write_data(path, data):
    out = ['window.PNP = {']
    keys = list(data)
    for i, key in enumerate(keys):
        val = data[key]
        end = ',' if i < len(keys) - 1 else ''
        if isinstance(val, dict) and val and all(isinstance(v, dict) for v in val.values()):
            out.append(f'  {_j(key)}: {{')
            items = list(val.items())
            for n, (k, rec) in enumerate(items):
                fields = list(rec.items())
                out.append(f'    {_j(k)}: {{')
                out += [f'      {_j(f)}: {_fmt(v, "      ")}' + (',' if m < len(fields) - 1 else '') for m, (f, v) in enumerate(fields)]
                out.append('    }' + (',' if n < len(items) - 1 else ''))
            out.append('  }' + end)
        elif isinstance(val, dict):
            items = list(val.items())
            out.append(f'  {_j(key)}: {{')
            out += [f'    {_j(k)}: {_fmt(v, "    ")}' + (',' if n < len(items) - 1 else '') for n, (k, v) in enumerate(items)]
            out.append('  }' + end)
        elif isinstance(val, list):
            out.append(f'  {_j(key)}: {_fmt(val, "  ")}{end}')
        else:
            out.append(f'  {_j(key)}: {_j(val)}{end}')
    out.append('};')
    with open(path, 'w', encoding='utf-8') as fh:
        fh.write('\n'.join(out) + '\n')


def bust_cache():
    adir = os.path.join(OUT, 'assets')

    def tag(name):
        with open(os.path.join(adir, name), 'rb') as fh:
            return hashlib.sha1(fh.read()).hexdigest()[:8]

    def has(name):
        return os.path.isfile(os.path.join(adir, name))

    css_ref = re.compile(r'url\(([\w.-]+\.(?:png|ttf|woff2?))\)')
    for css in ('card-style.css', 'style.css'):
        path = os.path.join(adir, css)
        with open(path, encoding='utf-8') as fh:
            text = fh.read()
        text = css_ref.sub(lambda m: f'url({m.group(1)}?v={tag(m.group(1))})' if has(m.group(1)) else m.group(0), text)
        with open(path, 'w', encoding='utf-8') as fh:
            fh.write(text)
    html_ref = re.compile(r'((?:href|src)=")((?:\.\./)*assets/)([\w.-]+\.(?:css|js|ttf|png))(")')
    for folder, _, files in os.walk(OUT):
        for f in files:
            if not f.endswith('.html'):
                continue
            path = os.path.join(folder, f)
            with open(path, encoding='utf-8') as fh:
                page = fh.read()
            new = html_ref.sub(lambda m: f'{m.group(1)}{m.group(2)}{m.group(3)}?v={tag(m.group(3))}{m.group(4)}' if has(m.group(3)) else m.group(0), page)
            if new != page:
                with open(path, 'w', encoding='utf-8') as fh:
                    fh.write(new)
