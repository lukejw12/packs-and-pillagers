
from wiki import *

QD = D.get('quests') or {'main': [], 'side': []}
MAINQ = QD['main']
SIDEQ = QD['side']
TAGLINE = 'A Stacklands-style card game that adds onto your survival experience.'
NETHER_PACKS = {'wastes_pack', 'fortress_pack', 'bastion_pack'}
TALIS.update({'horse': "Doubles the carrier's work speed on nodes", 'gilded_charm': 'Calms every Piglin on the table'})
RULES = [
    ('getting-started.html', 'Getting Started', 'Install the pack and get through your first day.'),
    ('table.html', 'The Table', 'Moving around, your hotbar, card slots, and table size.'),
    ('supper.html', 'Supper & Food', 'Feeding villagers, cooking, farming, and animals.'),
    ('villagers.html', 'Villagers', 'Jobs, gear, potions, enchanting, levels, and babies.'),
    ('combat.html', 'Night & Combat', 'Monsters, raids, fights, and status effects.'),
    ('machines.html', 'Machines', 'The Wrench, ports, furnaces, and the Autocrafter.'),
    ('gateways.html', 'Gateways & Bosses', 'Every gateway, its boss, and what it drops.'),
    ('nether.html', 'The Nether', 'Chapter 2: Piglins, gold, the Lava Sea, and the Wither.'),
    ('world.html', 'Out in the World', 'Cards from the real world, and cards you send back.'),
    ('multiplayer.html', 'Multiplayer & PvP', 'Shared tables, visiting friends, and raiding them.'),
    ('addons.html', 'Addons', 'Add your own cards, recipes, gear, and machines.'),
]
NOTES = {
    'summoning_orb': 'Evokers sometimes drop one.',
    'charged_redstone_core': 'Redstone Golems in the [[redstone_caves]] sometimes drop one.',
    'gunpowder': 'Creepers you kill before they blow drop it.',
    'treasure_map': 'The [[wandering_trader]] sells one for 10 emeralds.',
    'gate_trial': 'Find a Trial Chamber out in the world. The gateway fades after 3 days.',
    'gate_city': 'Find the Deep Dark out in the world. The gateway fades after 3 days.',
    'gate_monument': 'Find an Ocean Monument out in the world. The gateway fades after 3 days.',
    'gate_mansion': 'Find a Woodland Mansion out in the world. The gateway fades after 3 days.',
    'gate_outpost': 'Find a Pillager Outpost in your world, or get lucky with an Adventure or Combat Pack.',
    'gate_swamp': 'Working a [[swamp]] can turn one up.',
    'gate_fortress': '[[nether_wastes]] trips can turn one up, and the 10th trip always does.',
    'gate_bastion': '[[crimson_forest]] trips can turn one up, and the 10th trip always does.',
    'player_portal': 'In PvP your table gets one for every other player.',
    'side_table': 'Drop 10 Emerald Blocks on the [[shop_side]].',
    'grave': 'With a [[shrine]] on your table, the things you drop when you die land on it as a Grave.',
    'waypoint': 'Place a [[waystone|Waystone]] or a real Lodestone out in the world and it shows up on your table.',
    'invader': "Sent from another player's table in PvP.",
    'invader_golem': "Sent from another player's table in PvP.",
    'invader_wolf': "Sent from another player's table in PvP.",
    'redstone_cube_ally': 'Called by the [[redstone_awakened]] every third hit.',
    'wandering_trader': 'Stops by your table now and then, and leaves after a few minutes. The first one is announced the evening before.',
    'emerald': 'Selling cards, winning raids, filling Orders, and finishing quests.',
    'nether_portal': 'Build one from 10 Obsidian and Flint and Steel, or repair a [[ruined_portal]].',
    'badlands': 'Visit the Badlands in your world and its card lands on your table.',
    'snowy_plains': 'Visit the Snowy Plains in your world and its card lands on your table.',
    'swamp': 'Visit a Swamp in your world and its card lands on your table.',
    'linked_barrel': 'Sneak and right-click a real barrel with your Card Board.',
    'ominous_bottle': "The [[pillager_captain]] drops it. Right-click it and a Captain's Raid hits your table at nightfall.",
    'charred_food': 'Food left on the Nether table chars after 4 days.',
    'ash': 'Charred food burns to Ash 4 days after it chars.',
    'zoglin': 'Hoglins taken through the portal turn into Zoglins.',
    'piglin_ally': 'Give a [[piglin]] 3 Gold Ingots at once to recruit it.',
    'saddled_strider': 'Put a [[saddle]] on a [[strider]].',
    'lava_sea': 'A Villager with a [[warped_fungus_on_a_stick]] on a [[saddled_strider]] finds it.',
    'wither': 'Put 3 [[wither_skeleton_skull|Wither Skeleton Skulls]] on 4 [[soul_sand]].',
}
for _s in defs:
    if _s.startswith('shop_'):
        NOTES.setdefault(_s, 'Part of your shop row. Quests and purchases unlock more packs.')


def made(*ids):
    return sorted({r for c in ids for r in MADE.get(c, [])})


def shop_pack(s):
    p = defs[s].get('pack')
    if p not in defs:
        p = s[5:] + '_pack'
    return p if p in defs and (defs[p].get('kind') == 'pack' or p in NETHER_PACKS) else None


SHOPS = sorted([s for s in defs if s.startswith('shop_') and shop_pack(s)],
               key=lambda s: (shop_pack(s) in NETHER_PACKS, defs[s].get('price') or 0))
PACKS = [c for c in defs if defs[c].get('kind') == 'pack' and c != 'treasure_map']


def boss_box(b):
    d = defs[b]
    return (f'<div class="boss">{card(b)}<div><h3>{esc(cname(b))}</h3><p>{esc(d.get("desc", ""))}</p>'
            f'<p class="dim">{d.get("hp", 0)} health, {d.get("atk", 0)} attack</p></div></div>')


def qfix(s):
    return esc(re.sub('\u2726' + r'\s*([^,\u2726]+?)(?=\s+and\s|,|$)', r'\1 Idea', s or ''))


def page_home():
    demo = ('<div class="demo" title="Click to play it again" role="img" '
            'aria-label="A Villager dropped on an Oak Tree chops an Oak Log"><div class="bar"><i></i></div>'
            + card('oak_tree', link=False, cls='tree') + card('villager', link=False, cls='vill')
            + card('oak_log', link=False, cls='log') + '</div>')
    hero = ('<section class="hero"><h1 class="vh">Packs &amp; Pillagers Wiki</h1>'
            f'<img class="logo" src="{PP}logo.png" alt="Packs &amp; Pillagers" width="1240" height="439">'
            f'<p class="tag">{TAGLINE}</p>'
            f'<p class="ver">Version {VERSION} for {GAME}</p>'
            f'<div class="cta"><a class="btn" href="{LINK["modrinth"]}">Download on Modrinth</a>'
            f'<a class="btn alt" href="{LINK["github"]}">View on GitHub</a></div>'
            + demo + '<p class="cap">Drop a Villager on an Oak Tree and it starts chopping.</p></section>'
            f'<img class="divider" src="{PP}banner/pp-stretch.png" alt="" width="2267" height="144">')
    run = [('oak_tree', 'Stack villagers on trees, rocks, and bushes to gather.'),
           ('crafting_table', 'Exact stacks on a Crafting Table craft new cards.'),
           ('bread', 'Every morning your villagers sit down for supper.'),
           ('pillager', 'Monsters creep in at night, and raiders follow.'),
           ('gate_trial', 'Real structures you find open gateways on your table.'),
           ('redstone_monstrosity', 'Beat the Redstone Monstrosity to finish Chapter 1.'),
           ('nether_portal', 'Build a Nether Portal for a second table in the Nether.'),
           ('wither', 'Summon the Wither, then build a Beacon to finish Chapter 2.')]
    runh = '<div class="run">' + ''.join(f'<figure>{card(c)}<figcaption>{t}</figcaption></figure>' for c, t in run if c in defs) + '</div>'
    look = [('cards.html', 'Cards', len(BROWSE), 'villager'), ('recipes.html', 'Recipes', len(recipes), 'crafting_table'),
            ('ideas.html', 'Ideas', len(IDEA_IDS), 'idea_weapons'), ('packs.html', 'Packs', len(PACKS), 'humble_pack'),
            ('quests.html', 'Quests', len(MAINQ) + len(SIDEQ), 'q_lumber')]
    toc = '<ul class="toc">' + ''.join(f'<li><a href="{p}">{icon(c)}<span>{t}</span><i></i><b>{n}</b></a></li>'
                                       for p, t, n, c in look) + '</ul>'
    rules = '<ul class="rules">' + ''.join(f'<li><a href="{p}">{esc(t)}</a><p>{d}</p></li>' for p, t, d in RULES) + '</ul>'
    join = ('<div class="join">'
            f'<a class="soc big" href="{LINK["discord"]}"><img src="{UI}icon/discord.png" alt="" width="35" height="35">Join the Discord</a>'
            f'<a class="soc big" href="{LINK["kofi"]}"><img src="{UI}icon/kofi.png" alt="" width="35" height="35">Support on Ko-fi</a>'
            f'<a class="soc big" href="{LINK["github"]}"><img src="{UI}icon/github.png" alt="" width="35" height="35">Code on GitHub</a></div>')
    body = (hero + h2('How a Run Goes') + runh + h2('Look It Up') + toc + h2('Learn the Rules') + rules
            + h2('Join In') + '<p>Found a bug or have an idea? Bring it to the Discord, or open an issue on GitHub.</p>' + join)
    write_page('index.html', 'Packs & Pillagers Wiki', body,
               'The wiki for Packs & Pillagers, a Stacklands-style card game that adds onto your survival experience.')


def page_getting_started():
    body = '<h1>Getting Started</h1>' + doc("""
Packs & Pillagers runs on Minecraft Java 26.3. Play it as a data pack with its resource pack, or as a mod.

## Installing

- Download it from [x:modrinth|Modrinth]. Pick the data pack and the resource pack, or the mod jar for Fabric, Forge, NeoForge, or Quilt.
- For the data pack, add it on the Data Packs screen when you create a world, or put the zip in your world's datapacks folder. Put the resource pack zip in your resourcepacks folder and turn it on.
- For the mod, put the jar in your mods folder. It replaces both packs.
- On a server, put the data pack in the world's datapacks folder, and set the resource pack as the server resource pack or have players install it.

## Updating

Back up your world first. Then replace both the data pack and the resource pack, or the mod jar. Your quest progress, cards, and recipes should carry over. If you switch from the data pack to the mod, take the old data pack out of your world's datapacks folder.

## Your First Few Minutes

When the world starts, the host picks how to play: Single Player, or Multiplayer with a Shared Board, Individual Boards, or PvP. Then use the Card Board item to sit down at your table.

A strip at the top of your screen walks you through the basics:

1. Click a card to pick it up, and click again to drop it.
2. Drop a [[villager]] on the [[berry_bush]] to pick berries.
3. Drop a Villager on the [[oak_tree]] to chop logs.
4. Put 2 [[oak_log|Oak Logs]] on a Villager for a [[crafting_table]].
5. Put a Villager and an Oak Log on the Crafting Table to make [[planks]].
6. Put a Villager and Planks on the Crafting Table to make [[stick|Sticks]].
7. Drop a Villager on the [[rock]] to get [[cobblestone]].
8. Craft a [[stone_pickaxe]] from 3 Cobblestone and 2 Sticks.
9. Drop 8 Oak Logs on the Quest Book beside your table to finish your first quest.

@tiles 2 5 6 30

After that, buy packs at the shops and follow your main quests. Each one says what it needs, and a lot of them hand out the ideas you'll need next. You can skip the intro from the strip if you already know the ropes.

## Surviving the First Day

Days are half as long as normal. At dawn every villager eats 2 food points from your table and babies eat 1, so keep [[sweet_berries]] and [[apple|Apples]] around. See [p:supper.html|Supper & Food].

The panel at the top right shows the day, your emeralds, your cards against your card slots, and the food you need against the food on your table.

At night monsters creep onto your table. A [[torch]] keeps them away within 4 blocks. Raiders show up on your table's second night, so have a few fighters ready. See [p:combat.html|Night & Combat].

## Books on Your Table

- The [[guide_book]] explains every part of the game.
- The [[recipe_book]] opens the [[cardopedia]], which shows every card you've found. Recipes you haven't learned show as ???.
- Your Quest Book lies open on the platform beside your table. It shows your current quest, its reward, and where you are in the chapter. See [p:quests.html|Quests].
- The Controls book in your hotbar lists every key.

## For Server Admins

- `/function pnp:admin/menu` gives you the [[admin_codex]]. It lists every card in the game, can spawn any of them, and has a settings page.
- `/function pnp:reset/all` resets everything for everyone, back to Day 1.
- `/function pnp:debug/reset_board` resets everything on your own table.
""")
    write_page('getting-started.html', 'Getting Started', body, 'How to install Packs & Pillagers, update it, and get through your first day.')


def page_table():
    hb = table(['Slot', 'Tool', 'What it does'], [
        ('5', texicon('minecraft:item/clock_00') + 'Speed', 'Right-click for 2&times; or 4&times; speed. Left-click to pause.'),
        ('6', texicon('minecraft:item/item_frame') + 'Move Area', 'Right-click two corners and everything inside follows your cursor. Left-click to put it down, or right-click to put it all back.'),
        ('7', texicon('minecraft:item/map') + 'Grid', "Right-click to line every card up on the block grid. While it's selected, cards you drop snap to the grid too."),
        ('8', texicon('minecraft:item/book') + 'Controls', 'Shows every key.'),
        ('9', texicon('minecraft:item/lead') + 'Wrench', 'Right-click to enter tool mode and link up machines. See <a href="machines.html">Machines</a>.'),
    ])
    body = '<h1>The Table</h1>' + doc("""
Your table is a felt board in its own dimension. Everything you own sits on it as a card.

## Moving Around

Move with [k:W] [k:A] [k:S] [k:D]. Hold [k:Space] to pull back and move faster, or [k:Ctrl] to get in close. Click empty felt to glide there, and press [k:Shift] to leave the table. Those are the default keys, and the Controls book in your hotbar shows yours.

## Handling Cards

Left-click a card to pick it up, along with everything stacked on it. Click again to drop it, or drop it on another card to stack it. Right-click opens packs and books. Hover a card to see its tooltip, including what it sells for.

## Your Hotbar

While you're at the table your real inventory is put away, and your hotbar holds these tools instead. You get your inventory back when you leave.
""") + hb + doc("""
## Card Slots

You start with 15 card slots. If you have more cards than slots, the game freezes until you sell some. Every card counts, including cards on the side table, in the quest area, and in your hand. Emeralds and books don't count.

- A [[shelf]] gives 10 more slots.
- A [[vault]] gives 25 more.
- Each boss trophy gives 2 more.

## Table Size

Your table starts at 18 by 18. Every 10 card slots above 15 makes it 2 wider, up to 30 by 30. It only ever grows.

For more room, unlock the [[side_table]] to the left by dropping 10 Emerald Blocks on its shop, then grow it with Table Leaves. A Wandering Carpenter starts coming by after your third supper, and he trades Table Leaves for emeralds.

## Day and Night

The table follows the world's day and night, and days are half as long as normal. Supper happens every morning at dawn, and monsters come out at night.

## Painting the Table

Right-click the [[paintbrush]] to pick a color, then click two corners on the table to paint that area. Keep right-clicking to cycle colors. Press [k:Shift] or left-click the brush to stop painting.
""")
    write_page('table.html', 'The Table', body, 'Moving around your table, the hotbar tools, card slots, and table size.')


def page_cards():
    chips = '<button type="button" data-v="all" aria-pressed="true">All</button>' + ''.join(
        f'<button type="button" data-v="{k}" aria-pressed="false"><i class="sw k-{CAT_KIND.get(k, "base")}"></i>{esc(CAT_NAME[k])}</button>'
        for k in CAT_KEYS)
    secs = ''
    for k in CAT_KEYS:
        cells = ''.join(card(c, attrs=f' data-n="{esc(norm(cname(c) + " " + defs[c].get("kn", "")))}"') for c in CAT_IDS[k])
        secs += (f'<section data-sec="{k}"><h2 id="{k}">{esc(CAT_NAME[k])} <span class="n">{len(CAT_IDS[k])}</span></h2>'
                 f'<div class="cgrid">{cells}</div></section>')
    body = ('<h1>Cards</h1>' + doc("""
Every card in Packs & Pillagers, grouped the same way as the Cardopedia. Click one to see what it does, how to get it, and what it's used for.
""") + f'<div class="filt" data-for="#cardlist"><div class="chips" role="group" aria-label="Card groups">{chips}</div>'
        '<input class="fq" type="search" placeholder="Filter cards" aria-label="Filter cards"></div>'
        f'<div id="cardlist">{secs}<p class="empty" hidden>No cards match that.</p></div>')
    write_page('cards.html', 'Cards', body, 'Every card in Packs & Pillagers, with what it does and how to get it.')


GROUP_NOTE = {
    'gathering': 'A Villager on a source finds one card from its list each time the bar fills.',
    'animals': 'Animals work on their own. Up to 8 of the same animal can share a stack, and each one makes its own. On a Pen they work twice as fast.',
    'house': 'Two Villagers on a House make a baby. Add food as well and a grown Villager moves in instead.',
}
FIXED_GROUPS = {'gathering': 'Gathering', 'by-hand': 'By Hand', 'animals': 'Animals', 'maps': 'Maps', 'portals': 'Portals', 'other': 'Other'}


def group_of(rr):
    ins, out = rr['in'], rr['out']
    il = [x['c'] for x in rr.get('il', [])] or list(ins)
    if any(o.startswith('@') for o in out):
        return 'gathering'
    if any(o.startswith('portal_') for o in out):
        return 'portals'
    if 'pen' in out or any(defs.get(c, {}).get('kind') == 'animal' for c in ins):
        return 'animals'
    st = next((c for c in il if defs.get(c, {}).get('kind') == 'struct'), None)
    if st:
        return st
    if 'compass' in ins:
        return 'maps'
    if set(ins) <= {'villager', 'oak_log'}:
        return 'by-hand'
    return 'other'


def page_recipes():
    by = defaultdict(list)
    for rr in recipes:
        if rr['r'] not in VARIANT:
            by[group_of(rr)].append(rr['r'])
    stations = sorted([g for g in by if g not in FIXED_GROUPS], key=lambda g: (g != 'crafting_table', -len(by[g]), cname(g)))
    order = ['gathering', 'by-hand'] + stations + ['animals', 'maps', 'portals', 'other']
    groups = [(g, FIXED_GROUPS.get(g) or cname(g)) for g in order if by.get(g)]
    chips = '<button type="button" data-v="all" aria-pressed="true">All</button>' + ''.join(
        f'<button type="button" data-v="{slug(n)}" aria-pressed="false">{esc(n)}</button>' for g, n in groups)
    secs = ''
    for g, n in groups:
        note = f'<p>{GROUP_NOTE[slug(n)]}</p>' if slug(n) in GROUP_NOTE else ''
        secs += f'<section data-sec="{slug(n)}">{h2(n)}{note}{tiles(by[g])}</section>'
    body = ('<h1>Recipes</h1>' + doc("""
A recipe needs the exact cards it lists, all in one stack. A bar fills up while the villager works. Each recipe here shows the stack you build, how long it takes, what gets used up, and how you learn it.

If you put extra materials on a structure, the villager crafts the best recipe you know that fits and leaves the rest.
""") + f'<div class="filt" data-for="#rlist"><div class="chips" role="group" aria-label="Recipe groups">{chips}</div>'
        '<input class="fq" type="search" placeholder="Filter by card" aria-label="Filter recipes by card"></div>'
        f'<div id="rlist">{secs}<p class="empty" hidden>No recipes use that card.</p></div>')
    write_page('recipes.html', 'Recipes', body,
               'Every recipe in Packs & Pillagers, shown as the stack you build, with times and how to learn each one.')


def idea_tex(i):
    s = ideas.get(i, {}).get('sprite', '')
    if not s:
        return None
    return (s if ':' in s else 'minecraft:' + s), ideas[i].get('atlas') == 'minecraft:blocks'


def idea_card(i):
    t = idea_tex(i)
    return card(i, art_as=t if t and t[0] in TEXSIZE else None)


def idea_where(i, rel=''):
    items = found_items(i, rel)
    if REVEAL.get(i):
        items += '<li>Comes free with your first ' + join_and((clink(c, rel) for c in REVEAL[i]), 'or') + '</li>'
    return items


def page_ideas():
    rows = ''
    for i in IDEA_IDS:
        teach = ''.join(f'<li>{out_label(x["v"])} <span class="dim">({inputs_text(x["v"])})</span></li>'
                        for x in ideas.get(i, {}).get('r', []) if x['v'] in R)
        where = idea_where(i)
        rows += (f'<div class="irow" id="{i}">{idea_card(i)}<div><h3>{esc(cname(i))}</h3>'
                 + (f'<p class="k">Teaches</p><ul class="pl">{teach}</ul>' if teach else '')
                 + (f'<p class="k">Where to find it</p><ul class="pl">{where}</ul>' if where else '') + '</div></div>')
    urows = [(clink(c), join_and(list(dict.fromkeys(out_label(r) for r in rs if r in R)))) for c, rs in unlock.items() if c in defs]
    body = '<h1>Ideas</h1>' + doc("""
You start out knowing the basics. The first time a new card turns up, you learn the simple recipes that use it: Sticks teach the Stone Pickaxe, for example. Idea cards teach the rest.

Right-click an idea card to learn it. Main quests hand out the ideas you need, and a Villager with a [[library]] and 2 [[paper]] can Study one you're missing. Packs reroll ideas you already know, and recipes you haven't learned show as ??? in the Recipe Book.

## Every Idea
""") + f'<div class="ilist">{rows}</div>' + doc("""
## Learned by Finding Cards

These recipes don't need an idea. You learn them the first time the card turns up on your table.
""") + table(['The first time you get', 'You learn'], urows)
    write_page('ideas.html', 'Ideas', body, 'Every idea card, what it teaches, and where to find it.')


def shop_row(shops):
    rows = []
    for s in shops:
        p = shop_pack(s)
        price = defs[s].get('price')
        cur = 'gold' if p in NETHER_PACKS else 'emeralds'
        rows.append((clink(p), f'{price} {cur}' if price else '&ndash;', str(defs[p].get('count') or '&ndash;')))
    return table(['Pack', 'Price', 'Cards'], rows)


def pack_block(s):
    p = shop_pack(s)
    d = defs[p]
    price = defs[s].get('price')
    bits = []
    if price:
        bits.append(f'costs {price} ' + ('Gold Ingots' if p in NETHER_PACKS else 'emeralds'))
    if d.get('count'):
        bits.append(f'gives {d["count"]} cards')
    tail = (' It ' + ' and '.join(bits) + '.') if bits else ''
    lst = ''
    if d.get('pool') in pools:
        lst = '<p>Each card comes from this list:</p>' + pool_list(d['pool'], cls='pl cols')
    return h3(cname(p)) + f'<div class="pack">{card(p)}<div><p>{esc(d.get("desc", ""))}{tail}</p>{lst}</div></div>'


def page_packs():
    over = [s for s in SHOPS if shop_pack(s) not in NETHER_PACKS]
    neth = [s for s in SHOPS if shop_pack(s) in NETHER_PACKS]
    body = '<h1>Packs &amp; Shops</h1>' + doc("""
Emeralds buy card packs, and packs are where most new cards come from.

## The Shop Row

Drop emeralds or Emerald Blocks on a pack in your shop row to buy it, then right-click it to open. Right-click a shop pack to see every card it can give. Each pack's first card is always its kind, and packs reroll ideas you already know. Quests and purchases unlock more packs.
""") + shop_row(over) + doc("""
## The Nether Shop Row

The Nether shop row takes Gold Ingots, and each pack unlocks the next. The Wastes Pack is always open. The Fortress Pack opens after A Fortress in the Fire or 3 Wastes Packs, and the Bastion Pack after The Bastion or 3 Fortress Packs.
""") + shop_row(neth) + h2("What's in Each Pack") + ''.join(pack_block(s) for s in over + neth) + doc("""
## Wandering Trader

Now and then a [[wandering_trader]] stops by your table, and the first one is announced the evening before. Drop 10 emeralds on them before they leave and you get a [[treasure_map]]. Right-click the map to follow it, and it turns into one of these:
""") + pool_list('trader', cls='pl cols') + doc("""
## Piglin Merchant

Now and then a Piglin Merchant visits your Nether table by day, with one rare card for 8 gold.

## Selling

Drop cards on the [[sell_box|Sell box]] at the end of your shop row, or on a [[market]], to sell them for emeralds. A card's tooltip shows what it's worth, and nearly everything sells for at least 1 emerald. [[diamond|Diamonds]] are for crafting and can't be sold.

Emeralds and books don't take up card slots, so selling is also how you make room. See [p:table.html#card-slots|Card Slots].

## Trading Post

A [[trading_post]] swaps 9 emeralds for an [[emerald_block]] and back, and shops count an Emerald Block as 9 emeralds. It sells packs too, and it posts an Order every few days: fill it within 2 days for emeralds.

@tiles 65 66 40 41

## Wandering Carpenter

After your third supper a Wandering Carpenter starts coming by. He trades Table Leaves for emeralds, and each Table Leaf makes your side table bigger. See [p:table.html#table-size|Table Size].
""")
    write_page('packs.html', 'Packs & Shops', body,
               'Every card pack in both shop rows, what it costs, and the odds for every card inside.')


def page_quests():
    def mtable(qs):
        rows = []
        for i, q in enumerate(qs):
            goal = qfix(q['goal']) + (f'<span class="qh">Needs: {qfix(q["hint"])}</span>' if q.get('hint') else '')
            rows.append((str(i + 1), qfix(q['name']), goal, qfix(q['reward'])))
        return table(['', 'Quest', 'Goal', 'Reward'], rows)
    c1 = [q for q in MAINQ if not q['k'].startswith('c2_')]
    c2 = [q for q in MAINQ if q['k'].startswith('c2_')]
    rows = []
    for s in SIDEQ:
        cells = [f'<span class="qg">{qfix(t["goal"])}</span><span class="qr">{qfix(t["reward"])}</span>' for t in s['tiers']]
        rows.append([qfix(s['name'])] + cells + [''] * (3 - len(cells)))
    body = '<h1>Quests</h1>' + doc("""
Your Quest Book lies open on the platform beside your table. The left page shows your current main quest, what it needs, and its reward. The right page has three side quests. To hand cards in, drop them on the book. Rewards appear just below it.

## Chapter 1: Humble Beginnings
""") + mtable(c1) + doc("""
## Chapter 2: The Nether

Chapter 2 picks up once the Redstone Monstrosity is beaten, and it takes you to your [p:nether.html|Nether table].
""") + mtable(c2) + doc("""
## Side Quests

Side quests appear once you have what they need. Every 3 days at dawn, the ones you haven't started are swapped for new ones. Each one has three tiers.
""") + table(['Quest', 'Tier I', 'Tier II', 'Tier III'], rows, 'tbl wide sq')
    write_page('quests.html', 'Quests', body, 'Every main quest in Chapters 1 and 2, and every side quest chain, with goals and rewards.')


def page_supper():
    rows = []
    for f in sorted(FOODS, key=lambda x: (x['o'], cname(x['id']))):
        d = defs.get(f['id'])
        if not d:
            continue
        rows.append((clink(f['id']), str(d.get('food', 0)), 'Yes' if d.get('meal') else 'No',
                     'Fully' if d.get('heal', 0) >= 99 else str(d.get('heal', 0)),
                     fmt_sell(d['sell']) if d.get('sell') else '&ndash;'))
    body = '<h1>Supper &amp; Food</h1>' + doc("""
Every morning at dawn your villagers eat. Keep enough food on the table, and cook it when you can.

## How Supper Works

- Every villager needs 2 food points, and babies need 1.
- The cheapest food gets eaten first, and food in barrels counts too.
- Villagers are fed one at a time. Anyone who gets nothing starves to death.
- If you run short, the villager left with only part of a meal goes Hungry: 2 damage and 1 less attack until the next supper.
- If everyone eats and at least half of it was cooked or baked, they're Well Fed: healed 2 and 1 more attack until the next supper.

## Food Values

Food is listed in the order it gets eaten. Drop food on a hurt fighter to heal them, even in the middle of a fight.
""") + table(['Food', 'Points', 'Cooked', 'Heals', 'Sells for'], rows) + doc("""
## Cooking

Cooking makes food worth far more: a raw Porkchop is 2 points, cooked it's 6, and Cake is 16. Smelt food in a [[furnace]] with [[coal]], or use a [[smoker]], which cooks twice as fast.

@tiles 34 146 49 145

## Baking

@tiles 13 142 143 144

## Farming

Put a Villager and a crop on a [[farm]] and they grow more of it. Carrots, Potatoes, Sugar Cane, and Cocoa Beans come back three for one, Melon Slices four, and Cactus and Pumpkins two. A Farm on its own grows two Wheat. Give a Villager a hoe and they become a Farmer, who farms twice as fast.

A [[composter]] turns every 4 crops, fungi, or Ash into [[bone_meal]]. Drop Bone Meal on a working Farm, tree, bush, or Nether forest to finish it right away.

@tiles 19 150 151 152 153 154 155 156

## Animals

Chickens lay Eggs, Cows give Milk, and Sheep grow Wool all on their own. A [[pen]] makes them twice as fast. Up to 8 of the same animal can share a stack, and each one makes its own, so 3 Chickens lay 3 Eggs.

@tiles 22 90 105 106 121 122 137

A Villager can work an animal too. Give a Villager shears and they become a Shepherd, who tends animals twice as fast.

@tiles 20 21 35

## Food in the Nether

Food left on your Nether table chars after 4 days and is worth half, then burns to [[ash]] 4 days later. [[ice]] next to Nether food halves charring. See [p:nether.html|The Nether].
""")
    write_page('supper.html', 'Supper & Food', body,
               'How supper works, what food is worth, and how to cook, farm, and raise animals.')


def page_villagers():
    slots = ('<ul class="slots">'
             f'<li>{texicon("pnp:item/fx/slot_t", "", "icn")}Weapon or tool</li>'
             f'<li>{texicon("pnp:item/fx/slot_a", "", "icn")}Armor</li>'
             f'<li>{texicon("pnp:item/fx/slot_s", "", "icn")}Talisman</li></ul>')
    spec = table(['Give them', 'Job', 'What changes'], [(join_and(clink(t) for t in ts), job, eff) for ts, job, eff in SPECS if ts])
    gear = CAT_IDS.get('c6', [])
    weap = table(['Weapon', 'Attack', 'What it does'], [(clink(c), ('+' + str(defs[c]['atk'])) if defs[c].get('atk') else '&ndash;',
                                                         esc(defs[c].get('desc', ''))) for c in gear if defs[c].get('kind') == 'weapon'])
    arm = table(['Armor', 'What it does'], [(clink(c), esc(defs[c].get('desc', ''))) for c in gear if defs[c].get('kind') == 'armor'])
    tal = table(['Talisman', 'What it does'], [(clink(c), esc(TALIS.get(c) or defs[c].get('desc', ''))) for c in TALIS if c in defs])
    ranks = ['Novice', 'Apprentice', 'Journeyman', 'Expert', 'Master']
    badges = '<ul class="badges">' + ''.join(f'<li>{texicon("pnp:item/fx/badge_" + str(i + 1), "", "icn")}{r}</li>'
                                             for i, r in enumerate(ranks)) + '</ul>'
    body = '<h1>Villagers</h1>' + doc("""
Villagers do the work on your table, and most of the fighting.

## Workers

A [[villager]] works on whatever it's stacked on and fights when it has to. It starts with 5 health and 1 attack. Right-click a Villager to rename it: a book appears in your hand, so write the name on the first page and press Done.

## Gear Slots

Hover a Villager, [[iron_golem]], or [[wolf]] to see its three slots. Drop a card on them to equip it, and click a slot to take it back. Hover an enemy to see what it carries.
""") + slots + doc("""
## Specialists

A Villager's tool or weapon gives them a job.
""") + spec + h2('Weapons') + weap + h2('Armor') + arm + h2('Talismans') + doc("""
A talisman goes in the third slot.
""") + tal + doc("""
## Potions

Drop a potion on a Villager to use it. Healing heals 4, and Regeneration heals 1 a second for 30 seconds. Swiftness makes it work twice as fast, Strength adds attack, Night Vision stops blinding, and Water Breathing stops Guardian fatigue, all until the next supper. Fire Resistance stops fire damage for 3 days. You can also send a potion home in a Bundle.

## Enchanting

Stack a Villager, [[lapis_lazuli]], and a weapon or armor on an [[enchanting_table]]. Weapons get Sharpness or their own kind, worth +1 attack per level. Armor gets Protection, +1 health per level, or Fire Protection against fire attacks. Enchant again to reach level III. The enchantment stays on the card, and a Bundle exports it as the real enchanted item.

## Levels

Villagers earn experience from work and fights, ranking up from Novice to Apprentice, Journeyman, Expert, and Master. The badge in the card's corner shows their rank. Each rank adds health, and Journeymen and Masters work faster.
""") + badges + doc("""
## Babies

Two Villagers on a [[house]] make a [[baby_villager]]. Add food as well and a grown Villager moves in instead. Babies can't work or fight, and monsters leave them alone. They eat 1 food point at supper and grow up after 5 minutes.

@tiles 71 15 16 42 43

## Golems, Wolves, and Piglins

An [[iron_golem]] can't work, but it hits very hard: 20 health and 5 attack. A [[wolf]] is a loyal fighter with 8 health and 3 attack. Both can carry gear. On the Nether table, give a [[piglin]] 3 Gold Ingots at once and it joins you as an [[piglin_ally]].

A [[copper_golem]] doesn't fight. It walks loose cards to a matching or empty barrel, 8 at a time.

@tiles 37 74

## Healing and Reviving

Drop food on a hurt fighter to heal them, even in the middle of a fight. A [[golden_apple]] heals them fully. Right-click a [[totem]] to bring back a fallen villager, or give it to a fighter as a talisman so they survive one deadly blow. A [[respawn_anchor]] charged with [[glowstone_dust]] brings back a villager who falls on the Nether table, but it explodes on the overworld table.
""")
    write_page('villagers.html', 'Villagers', body, 'Villager jobs, gear, talismans, potions, enchanting, levels, babies, and allies.')


def page_combat():
    effects = [('poison', 'Poison', ['bogged'], "Hurts over time, but can't kill."),
               ('slowness', 'Slowness', ['stray'], 'Slows attacks.'),
               ('mining_fatigue', 'Fatigue', ['guardian', 'elder_guardian'], 'Slows work and attacks.'),
               ('weakness', 'Weakness', ['vex'], 'Weakens hits.'),
               ('blindness', 'Blindness', ['warden', 'illusioner'], 'Fighters miss half their attacks.')]
    eff = table(['Effect', 'From', 'What it does'], [(texicon('pnp:item/effect/' + t, '', 'ico eff') + n, join_and(clink(x) for x in who), e)
                                                     for t, n, who, e in effects])
    order = [c for c in CAT_IDS.get('c7', []) if defs[c].get('kind') == 'enemy']
    order += [c for c in defs if defs[c].get('kind') == 'enemy' and c not in order and c not in HIDE]
    rows = []
    for c in order:
        d = defs[c]
        tr = join_and(TRAITS.get(t, t) for t in (d.get('traits') or {}))
        drops = join_and(clink(x) for x in dict.fromkeys(d.get('loot') or []))
        rows.append((clink(c), str(d.get('hp', 0)), str(d.get('atk', 0)), tr or '&ndash;', drops or '&ndash;', where_of(c) or '&ndash;'))
    body = '<h1>Night &amp; Combat</h1>' + doc("""
Monsters come at night, raiders come every few nights, and your villagers have to deal with both.

## Night

The table follows the world's day and night. At night monsters creep onto your table: [[zombie|Zombies]], [[skeleton|Skeletons]], [[spider|Spiders]], and [[creeper|Creepers]]. Zombies and Skeletons burn away at dawn. Once you know a [[swamp]], [[witch|Witches]] come at night too.

A [[torch]] keeps monsters from spawning within 4 blocks of it, and a [[copper_bulb]] within 8.

## Creepers and TNT

Creepers walk up to your villagers and light their fuse. Drop any villager or fighter on a Creeper to finish it off before it blows, and it leaves [[gunpowder]] behind. Two Gunpowder and two [[sand]] make [[tnt]]. Drag TNT onto a fight or a monster to deal 5 damage to every enemy close by.

@tiles 140

## Raids

Raiders come on your table's second night, then every third night after that, and each raid is a little tougher than the last. Patrols can turn up during the day too.

From raid 5 an [[evoker]] joins in. It hangs back casting fangs and calls [[vex|Vexes]] when it's hurt. Raid 10 brings the [[illusioner]], and the raids keep coming after that. [[ravager|Ravagers]] show up in the big ones.

The [[pillager_captain]] at the end of an Outpost gateway drops an [[ominous_bottle]]. Right-click it and a Captain's Raid hits your table at nightfall.

## Fights

Fights happen in a fight box. Drop a fighter on an enemy to start one, then drop more fighters into the box to join. Enemies that wander close join too, and the box grows to fit everyone.

Fighters take turns. Melee fighters lunge at their target, and archers shoot from the back row. Drag a fighter out to pull them from the fight, or drop food on them to heal them. While you're away from your table, fights and raiders move five times slower.

Big enemies come in three tiers: Boss, Elite, and Miniboss. The Wither, the Wildfire, and the Redstone Monstrosity have special attacks and a second phase.

## Status Effects

Some enemies leave status effects, shown as an icon on the card and in its tooltip. They wear off after a few seconds. A fighter carrying a [[pumpkin]] can't be blinded, and potions can block some effects too. See [p:villagers.html#potions|Potions].
""") + eff + h2('Enemies') + table(['Enemy', 'Health', 'Attack', 'Traits', 'Drops', 'Where'], rows, 'tbl wide')
    write_page('combat.html', 'Night & Combat', body,
               'Night monsters, raids, fight boxes, status effects, and every enemy in Packs & Pillagers.')


def page_machines():
    ports = ('<ul class="slots">'
             f'<li>{texicon("pnp:item/fx/port_in", "", "icn")}Input port</li>'
             f'<li>{texicon("pnp:item/fx/port_out", "", "icn")}Output port</li></ul>')
    acrows = []
    for out, v in sorted(AC.items(), key=lambda kv: cname(kv[0])):
        n = len(v.get('out', [])) or 1
        need = join_and(((str(q) + '&times; ') if q > 1 else '') + clink(c) for c, q in v.get('need', {}).items())
        acrows.append((clink(out) + (f' &times;{n}' if n > 1 else ''), need, f'{v.get("t", 0) / 20:g}s'))
    body = '<h1>Machines</h1>' + doc("""
Once you can link machines together, cards move around your table on their own.

## Tool Mode

Right-click the [[wrench]] to enter tool mode. Cards lock in place, the world turns grey, and machines show their ports: green for inputs and orange for outputs. Right-click one port and then another to link them. Left-click a port to cut its link.
""") + ports + doc("""
## What Makes Things

Trees, rocks, bushes, farms, and animals push what they make out of their output. Link that output to a machine and the cards travel there on their own.

Cards go to a matching filter or barrel first. Anything with nowhere to go waits by its source.

## Storage

A [[barrel]] stores up to 128 cards of one kind. Drop cards in, and right-click it to take 5 out. A [[copper_barrel]] holds 256. Food in barrels counts at supper. An [[ender_chest]] shares one storage across your overworld and Nether tables.

A [[copper_golem]] walks loose cards to a matching or empty barrel, 8 at a time.

## Furnaces and Generators

A [[furnace]] smelts with coal or wood. Once it's linked up, it smelts [[iron_ore]], [[gold_ore]], [[porkchop|Raw Porkchops]], and [[cod]] on its own. [[coal]] is the best fuel, then [[oak_log|Oak Logs]], then [[planks]] and [[stick|Sticks]].

A [[smoker]] cooks food and a [[blast_furnace]] smelts ores twice as fast as a Furnace. A [[composter]] turns every 4 crops, fungi, or Ash into [[bone_meal]], and a [[cobblestone_generator]] makes Cobblestone on its own.

## Hoppers and Droppers

A [[hopper]] passes cards along. Drop a card on it to make it a filter. A [[dropper]] takes cards from up to 3 inputs and deals them out across 3 outputs.

## Selling and Sending

Link a machine into the [[sell_box|Sell box]] to sell what it makes on its own, or into a [[bundle]] to send cards to your real inventory.

Sneak and right-click a real barrel with your Card Board to link it, and a [[linked_barrel]] card appears on your table. Right-click the card to switch between pulling items in and sending piped cards out to that barrel.

## Nether Machines

The Wrench works on your Nether table too. Pipe cards into a [[nether_portal]] and they come out of the portal on your other table. Nether nodes have output ports like the overworld ones. A [[brewing_stand]] brews on its own from piped ingredients, and [[blaze_powder]] makes it brew two at once. The [[barter_station]], [[wart_farm]], and [[blaze_spawner]] work on their own.

## Autocrafter

The [[autocrafter]] crafts on its own, no villager needed. Drop a card on it to choose what it makes, then feed it the ingredients. It has 4 inputs and 4 outputs. You learn its recipe from the [[idea_autocrafter]].

### What It Can Make
""") + table(['Makes', 'From', 'Time'], acrows)
    write_page('machines.html', 'Machines', body, 'Tool mode, ports, storage, furnaces, Nether machines, and the Autocrafter.')


FIND = {
    'gate_trial': 'Find a Trial Chamber in your world',
    'gate_city': 'Find the Deep Dark in your world',
    'gate_monument': 'Find an Ocean Monument in your world',
    'gate_mansion': 'Find a Woodland Mansion in your world',
    'gate_outpost': 'Find a Pillager Outpost in your world, or get lucky with an Adventure or Combat Pack',
    'gate_swamp': 'Work a [[swamp]]',
    'gate_fortress': 'Work the [[nether_wastes]], guaranteed by the 10th trip',
    'gate_bastion': 'Work the [[crimson_forest]], guaranteed by the 10th trip',
}


def page_gateways():
    rows = [(clink(g), md(FIND.get(g, '&ndash;')), clink(b) if b else '&ndash;', clink(k) if k else '&ndash;',
             join_and(clink(x) for x in loot) or '&ndash;') for g, pl, b, po, k, loot in GATE_INFO]
    bosses = [b for b in dict.fromkeys([x[2] for x in GATE_INFO if x[2]] + ['wither']) if b in defs]
    caves = '<ul class="pl">' + ''.join(f'<li>{clink(c)}</li>' for c in CAVES_LOOT) + '</ul>'
    body = '<h1>Gateways &amp; Bosses</h1>' + doc("""
Real places open gateways on your table. Stack villagers on one and right-click to send them through. They fight a few waves and then a boss, healing a little between waves. Win, and the loot comes home as one stack. Gateways from your world fade after 3 days.

## Every Gateway
""") + table(['Gateway', 'How to find it', 'Boss', 'Portal key', 'Loot it can give'], rows, 'tbl wide') + doc("""
A Villager with an explorer map opens that map's gateway on your table. Some rare finds keep count: the action bar shows how many trips are left until one is guaranteed.

## Stable Portals

Win a run through the Trial, Sculk, Ocean, or Mansion gateway and you learn its Stable Portal, so you can go back whenever you like. Build one from a Villager, 4 Cobblestone, a Diamond, and the place's key. Each run through it costs another key.

@tiles 67 68 69 70

## Bosses

The Wither, the Wildfire, and the Redstone Monstrosity have special attacks and a second phase.
""") + '<div class="bosses">' + ''.join(boss_box(b) for b in bosses) + '</div>' + doc("""
## Redstone Caves

The [[redstone_caves]] are a wave area: five waves of [[redstone_cube|Redstone Cubes]], with [[redstone_golem|Redstone Golems]] as minibosses. Stack villagers on the card and right-click to send them in. The card never fades, so go back as often as you like. Golems sometimes drop a [[charged_redstone_core]]. Clearing them can give:
""") + caves + doc("""
## The Redstone Monstrosity

Stack a [[charged_redstone_core]] with a [[summoning_orb]]. Evokers sometimes drop the orb. After 30 seconds the Redstone Monstrosity bursts onto your table. It slams the ground, calls Redstone Cubes, and is shielded while any of them are alive. Beat it with your villagers to finish Chapter 1.

@tiles 157
""") + '<div class="bosses">' + boss_box('redstone_monstrosity') + '</div>' + doc("""
It always drops the [[monstrosity_helmet]]. The rest of its loot can include a [[redstone_awakened]], [[emerald|Emeralds]], [[diamond|Diamonds]], and a [[golden_apple]].

## The Wither

Put 3 [[wither_skeleton_skull|Wither Skeleton Skulls]] on 4 [[soul_sand]] to summon the [[wither]]. While it flies, only ranged fighters can hurt it. Its Nether Star builds a [[beacon]]: feed it minerals for a buff on your table. See [p:nether.html|The Nether].
""")
    write_page('gateways.html', 'Gateways & Bosses', body,
               'Every gateway in Packs & Pillagers, how to find it, its boss, and its loot, plus the Redstone Monstrosity and the Wither.')


def page_world():
    wt = table(['Do this', 'Get'], [(a, clink(c)) for c, a in WORLD.items()])
    charms = [('bone', 'Bone Charm', '+1 attack damage'), ('echo_shard', 'Echo Charm', 'Faster sneaking'),
              ('prismarine_shard', 'Tide Charm', 'Longer breath and faster swimming'), ('clock', 'Clockwork Charm', 'Faster mining'),
              ('compass', 'Wayfinder Charm', 'Faster walking'), ('rabbit_foot', 'Lucky Charm', 'More luck and a little speed')]
    ct = table(['Send home', 'You get', 'In your off hand'], [(clink(c), n, e) for c, n, e in charms])
    body = '<h1>Out in the World</h1>' + doc("""
Your table and the real world feed each other.

## Gathering Gives Cards

Chopping, mining, and harvesting out in the world gives you cards for your table.
""") + wt + doc("""
## New Lands

Visiting the [[badlands]], [[snowy_plains]], or a [[swamp]] in your world puts its card on your table. The Badlands give gold and [[terracotta]], the Snowy Plains give [[ice]], which halves charring next to Nether food, and the Swamp gives [[slimeball|Slimeballs]] for [[magma_cream]]. Witches come at night once you know a Swamp.

## Bringing Mobs In

Right-click a villager or animal with the Card Board to bring it onto your table.

## Links to Your World

Sneak and right-click a real barrel with your Card Board to link it, and a [[linked_barrel]] card appears on your table. Right-click the card to switch between pulling items in and sending piped cards out to that barrel. Place a real Lodestone anywhere, even in the Nether, and that spot becomes a waystone on your table.

## Sending Cards Home

Drop cards on a [[bundle]] to send them to your real inventory. Most resources and gear turn into the real item, and enchanted gear comes out with its enchantment. Villagers arrive as real villagers with their trades. [[enchanted_book|Enchanted Books]], potions, and maps become the real thing, and talismans turn into charms that work in your off hand.
""") + ct + doc("""
## Maps and Structures

A Villager with a [[compass]] can draw a map to a structure. Send it home with a Bundle for a real explorer map, then find the structure to open its gateway on your table. A Villager holding an explorer map opens that map's gateway too. See [p:gateways.html|Gateways & Bosses].

@tiles 86 87 88 89

## Potions and Books

A Villager at a [[brewing_stand]] brews potions, and one at a [[library]] writes Enchanted Books from Leather. Use potions on your villagers, or send them home with a Bundle to use them for real.

@tiles 78 79 80 81 82 83 76

## Waystones and Graves

Craft a [[waystone|Waystone Kit]], send it home, and right-click where you want a waystone. It shows up on your table too, so you can right-click it there to leave the table at that spot.

With a [[shrine]] on your table, the things you drop when you die land on it as a [[grave]]. Right-click the Grave to get your things back when you leave the table.

@tiles 85 84

## Quests in the World

Some side quests count what you do out in the world, like catching fish, mining ores, defeating mobs, and finding villages. See [p:quests.html|Quests].
""")
    write_page('world.html', 'Out in the World', body,
               'Cards you get from the real world, new lands, linked barrels, and cards you can send home.')


def page_multiplayer():
    modes = [('menu_single', 'Single Player', 'Just you and your table.'),
             ('menu_shared', 'Shared Board', 'Everyone plays on one table.'),
             ('menu_solo', 'Individual Boards', 'Everyone gets their own table, and you can visit each other.'),
             ('menu_pvp', 'PvP', 'Everyone gets their own table, plus a portal to raid every other player.')]
    mh = '<ul class="modes">' + ''.join(f'<li>{texicon("pnp:font/" + i, "", "mode")}<div><b>{t}</b><p>{d}</p></div></li>'
                                        for i, t, d in modes) + '</ul>'
    body = '<h1>Multiplayer &amp; PvP</h1>' + doc("""
Play with friends on one shared table, on tables of your own, or against each other.

## Game Modes

When a world starts, the host picks how to play.
""") + mh + doc("""
## Visiting Tables

Right-click another player with your Card Board to join their table. You'll use their cards and recipes, join their fights, and fill their quests. Sneak to go back. When several players share a table, each player's head floats above their cursor. A server can also run one shared table for everyone.

## Trading

To trade cards, send them home with a [[bundle]], hand over the items, and bring them back in through a barrel.

## PvP

In PvP your table gets a [[player_portal|Portal]] for every other player, named after them. Drop villagers, wolves, or golems on a portal and right-click to send them. They arrive at that table right away.

If they beat the defenders, or are still standing after 90 seconds, each one steals a valuable card and they all come home. A table that was just attacked is safe for 5 minutes.

Attackers show up on the other table as [[invader|Invaders]], [[invader_golem|Invading Golems]], and [[invader_wolf|Invading Wolves]].
""")
    write_page('multiplayer.html', 'Multiplayer & PvP', body, 'Game modes, visiting other tables, trading, and PvP raids.')


def page_nether():
    places = [c for c in ('nether_wastes', 'crimson_forest', 'warped_forest', 'soul_sand_valley', 'basalt_deltas', 'lava_sea') if c in defs]
    grid = '<div class="cgrid">' + ''.join(card(c) for c in places) + '</div>'
    body = '<h1>The Nether</h1>' + doc("""
Chapter 2 opens a second table in the Nether, with its own places, monsters, shops, and bosses.

## Getting There

Build a [[nether_portal]] from 10 [[obsidian]] and [[flint_and_steel]], or repair a [[ruined_portal]]. Right-click the portal to travel to your Nether table, and stack cards on it to send them across.
""") + tiles(made('nether_portal')) + doc("""
## Nether Places

Work the [[nether_wastes]] for gold. A Villager with a [[compass]] on the Wastes finds a place you haven't seen yet, and the first trip to each one brings its key cards.
""") + grid + doc("""
## Food Goes Bad

Food left on the Nether table chars after 4 days and is worth half, then burns to [[ash]] 4 days later. [[ice]] next to Nether food halves charring.

## Piglins and Gold

[[piglin|Piglins]] attack villagers without gold. Drop a [[gold_ingot]] on one to barter for a random card, or give it 3 at once to recruit it as an [[piglin_ally]]. A [[golden_helmet]] keeps Piglins off its wearer, and a [[gilded_charm]] calms every Piglin on the table.

## Nether Shops

The Nether shop row takes Gold Ingots, and each pack unlocks the next. The Wastes Pack is always open. The Fortress Pack opens after A Fortress in the Fire or 3 Wastes Packs, and the Bastion Pack after The Bastion or 3 Fortress Packs. Now and then a Piglin Merchant visits by day with one rare card for 8 gold. See [p:packs.html#the-nether-shop-row|Packs & Shops].

## The Lava Sea

Put a [[saddle]] on a [[strider]]. With a Villager and a [[warped_fungus_on_a_stick]], the [[saddled_strider]] finds the [[lava_sea]], then carries villagers out to work it for gold, [[ancient_debris]], and treasure.

## Nether Nights

Some Nether nights bring a Ghast Storm or a Hoglin Stampede, and Hoglins taken through the portal turn into [[zoglin|Zoglins]].

## Fortress and Bastion

Nether Wastes trips can turn up a [[gate_fortress]] gateway, and the 10th trip always does. Crimson Forest trips do the same for the [[gate_bastion]]. The Fortress ends with the [[wildfire]], whose shields break fastest to ranged attacks. The Bastion ends with the [[mutated_hoglin]]. See [p:gateways.html|Gateways & Bosses].

## Netherite

Ancient Debris from the Lava Sea turns into Netherite, and a [[smithing_table]] upgrades your diamond gear.
""") + tiles(made('netherite_scrap', 'netherite_ingot', 'netherite_sword', 'netherite_chestplate', 'netherite_pickaxe')) + doc("""
## The Wither and the Beacon

Put 3 [[wither_skeleton_skull|Wither Skeleton Skulls]] on 4 [[soul_sand]] to summon the [[wither]]. While it flies, only ranged fighters can hurt it. Its Nether Star builds a [[beacon]]: feed it minerals for a buff on your table.

## Helpers

[[ender_chest|Ender Chests]] share one storage across both tables. A [[respawn_anchor]] charged with [[glowstone_dust]] brings back a villager who falls on the Nether table, but it explodes on the overworld table. The [[barter_station]], [[wart_farm]], and [[blaze_spawner]] work on their own.

## Nether Automation

The Wrench works on your Nether table too. Pipe cards into a Nether Portal and they come out of the portal on your other table. Nether nodes have output ports like the overworld ones. A [[brewing_stand]] brews on its own from piped ingredients, and [[blaze_powder]] makes it brew two at once.

## Chapter 2 Quests

The main quest line carries on into the Nether. See [p:quests.html#chapter-2-the-nether|Quests] for every step.
""")
    write_page('nether.html', 'The Nether', body,
               'Chapter 2 of Packs & Pillagers: the Nether table, Piglins and gold, the Lava Sea, the Fortress, the Bastion, and the Wither.')


def page_addons():
    body = '<h1>Addons</h1>' + doc("""
Addons are separate data packs that add cards, recipes, food, gear, machines, and raiders to Packs & Pillagers. Don't edit the main pack. Add to its storage from the load hook instead.

The example addon shows most of this working: a Golden Carrot, a Sift, raw metals, and a Crushing Press machine. Download [x:addon_dp|the example addon] and [x:addon_rp|its resource pack].

## Load Hook

Packs & Pillagers rebuilds all its data every time it loads, so anything added from `minecraft:load` gets wiped. Use `#pnp:load` instead. It runs right after the pack finishes loading.

In `data/pnp/tags/function/load.json`:

```json
{
  "values": ["yourpack:register"]
}
```

## Cards

Write the card into `pnp:cards defs.<id>`, then call `add_card`:

```mcfunction
data modify storage pnp:cards defs.golden_carrot set value {id:"golden_carrot",name:"Golden Carrot",kind:"food",food:6,meal:6,heal:4,sell:12,give:"minecraft:golden_carrot",gn:1,desc:"Food: 6. A carrot dipped in gold.",l1:"Food: 6. A carrot",l2:"dipped in gold.",atlas:"minecraft:items",sprite:"item/golden_carrot"}
function pnp:api/add_card {id:"golden_carrot",category:"c2"}
```

`add_card` fills in anything you leave out and adds the card to the Cardopedia, plus supper if it's food. Only `id`, `name`, and `kind` are required. The rest:

- `desc`: the Cardopedia description
- `l1` to `l4`: tooltip lines, about 22 characters each
- `hp`, `atk`: health and attack
- `sell`: sell price in quarter emeralds, so 4 is 1 emerald
- `heal`: health it gives a hurt villager
- `give`, `gn`: the vanilla item and count it turns into when exported
- `sprite`, `atlas`: the icon next to its name (`atlas` defaults to `minecraft:items`)
- `food`, `meal`, `eat_order`: see Food below
- `traits`, `cooldown`, `eq`, `loot`: see Fighters below

**Kinds:** `res`, `food` (eaten at supper), `unit` (fights for you), `enemy` (monster), `animal` (wanders around), `struct`, `node` (renewable source), `tool`, `weapon`, `armor`, and `trinket`. The other kinds are for built-in cards.

**Categories:** `c1` Resources, `c2` Food, `c3` Nature, `c4` Buildings, `c5` People, `c6` Gear, `c7` Monsters, `c8` Ideas, and `c9` Adventure.

Card ids are shared between addons, so give generic ones a prefix. You can change built-in cards the same way, like `data modify storage pnp:cards defs.bread.food set value 6`. For a custom Cardopedia tooltip, set `pnp:pedia2 tip.<id>` after calling `add_card`.

## Card Text and Translations

Card text can be translated. Put these keys in a lang file in your resource pack, in any namespace folder, like `assets/yourpack/lang/en_us.json`:

- `pnp.card.<id>.name`, `pnp.card.<id>.type`, and `pnp.card.<id>.desc`
- `pnp.card.<id>.line1` to `pnp.card.<id>.line4` for the tooltip

The text in your defs shows whenever a key is missing. For your own messages, use `{translate:"yourpack.key",fallback:"Text"}` so they can be translated too. The example addon comes with English and Spanish.

## Art

Two files in a resource pack. First `assets/pnp/items/card/golden_carrot.json`:

```json
{
  "model": {
    "type": "minecraft:model",
    "model": "pnp:card/golden_carrot"
  }
}
```

Then `assets/pnp/models/card/golden_carrot.json`:

```json
{
  "parent": "pnp:card/template_food_item",
  "textures": {
    "art": "minecraft:item/golden_carrot"
  }
}
```

The parent is the card frame: `pnp:card/template_<kind>_item`, or `template_<kind>_block` for block art. `art` can be any texture.

## Recipes

```mcfunction
data modify storage pnp:cards recipes append value {r:1001,in:{villager:1,carrot:1,gold_ingot:1},n:3,time:80,use:["carrot","gold_ingot"],out:["golden_carrot"],il:[{c:"villager",n:1},{c:"carrot",n:1},{c:"gold_ingot",n:1}]}
data modify storage pnp:cards free.r1001 set value 1b
```

- `r`: the recipe number. Packs & Pillagers uses numbers under 1000, so pick your own range above that, like 1000 to 1099.
- `in`: the cards needed. `n` is the total, and the stack has to match it exactly. Recipes don't need a villager: the example smelts Raw Iron with just a Furnace and Coal.
- `time`: in tenths of a second, so 80 is 8 seconds.
- `use`: cards that get used up, once per copy. Anything not listed stays.
- `out`: the cards it makes, or `"@name"` for a random pick from `pnp:cards pools.<name>`.
- `il`: the same cards as `in`, written as a list. It's used for hints.

`free.r<number>` makes the recipe known from the start. You can add it to an idea's `r` list instead (`pnp:cards ideas.<idea>.r`), but anyone who already learned that idea won't get it.

Pools look like `{t:10,e:[{c:"carrot",w:6},{c:"potato",w:4}]}`, where `t` is the total weight. An entry with `c:"nothing"` gives nothing, for a chance of coming up empty.

## Food

Use `kind:"food"` with:

- `food`: the points it's worth. Villagers eat 2, and babies eat 1.
- `meal`: how much of it counts as cooked. Villagers get Well Fed when at least half of what they ate was cooked. Use the same number as `food` for cooked food, and 0 for raw.
- `eat_order`: optional. The lowest gets eaten first. It defaults to `food`.

Barrels holding it count automatically.

## Smelting

```mcfunction
data modify storage pnp:cards smelt.raw_iron set value "iron_ingot"
```

A linked Furnace then smelts that card on its own. Add a Furnace recipe as well so it can be smelted by hand.

## Fighters

Use `kind:"enemy"` or `kind:"unit"` with `hp` and `atk`, plus any of these:

- `traits`: any of `ranged`, `beam`, `knock`, `fast`, `undead` (burns in daylight), and `boss`, like `{ranged:1b,undead:1b}`
- `cooldown`: ticks between special attacks
- `eq`: starting gear, with `t` for a weapon or tool, `a` for armor, and `s` for special, like `{t:"bow"}`
- `loot`: cards it drops, like `["bone"]`

## Gear

Make a card equippable with `pnp:cards slot.<id>`: `"t"` for the weapon or tool slot, `"a"` for armor, or `"s"` for the talisman slot. Then say what it does in `pnp:cards gear.<id>`:

```mcfunction
data modify storage pnp:cards slot.copper_sword set value "t"
data modify storage pnp:cards gear.copper_sword set value {atk:2,role:"swordsman"}
data modify storage pnp:cards slot.sling set value "t"
data modify storage pnp:cards gear.sling set value {atk:1,role:"archer",ranged:1b,cd:18}
data modify storage pnp:cards slot.lucky_clover set value "s"
data modify storage pnp:cards gear.lucky_clover set value {talisman:"rabbit_foot"}
```

- `atk`, `hp`: attack and health it adds
- `role`: the job it gives, the same jobs the built-in tools give: `swordsman`, `miner`, `lumberjack`, `farmer`, `shepherd`, `fisher`, `smith`, `cleric`, `scholar`, `explorer`, `builder`, `archer`, `guard`, `brute`, or `lancer`
- `talisman`: works like a built-in talisman: `totem`, `clock`, `compass`, `rabbit_foot`, `bone`, `prismarine_shard`, `echo_shard`, or `pumpkin`
- `ranged:1b`: attacks from the back row, like a Bow
- `pierce:1b`: hits a second enemy, like a Crossbow
- `reach:1b`: hits from further away, like a Spear
- `guard:1b`: draws attacks and blocks some, like a Shield
- `mace:1b`: hits everything around the target, like a Mace
- `cd`: ticks between attacks. The default is 20, a Bow is 16, and a Mace is 30.

## Machines

There are two ways to add a machine. The quick one makes your card work exactly like a built-in machine, ports and all:

```mcfunction
data modify storage pnp:cards machine.big_barrel set value "barrel"
```

That works with `barrel`, `copper_barrel`, `hopper`, `dropper`, `furnace`, `sell_box`, `bundle`, `oak_tree`, `rock`, `berry_bush`, `forest`, `mountain`, `cave`, `farm`, `chicken`, `cow`, `sheep`, and `pig`.

For a machine that does something new, describe it in `pnp:cards machines.<id>` and write its functions yourself:

```mcfunction
data modify storage pnp:cards machines.crushing_press set value {in:1,out:1,storage:16,accepts:["cobblestone","iron_ore","gold_ore","copper_ore"],on_tick:"pnp_example:press/tick",on_use:"pnp_example:press/use"}
```

- `in`, `out`: how many input and output ports it gets, from 1 to 4. Both default to 1.
- `storage`: how many cards can wait inside. The default is 64.
- `accepts`: the cards it takes. Leave it out to take anything.
- `on_input`: a function that runs when a card goes in, dropped or piped
- `on_tick`: a function that runs once a second
- `on_use`: a function that runs when a player right-clicks it

Players can drop cards on it or pipe them in with the Wrench, and its label shows what's waiting. Your functions run as the machine card, at its position, and can use these:

- `pnp:api/machine/take`: takes the next waiting card and puts its id in `pnp:machine io.c`. It fails if nothing is waiting.
- `pnp:api/machine/emit {c:"<id>"}`: sends a card out of the output port, or drops it beside the machine if nothing is linked.
- `pnp:api/machine/store {c:"<id>"}`: adds a card to the ones waiting.
- `pnp:api/machine/count`: returns how many cards are waiting.
- `pnp:api/machine/progress {p:<0 to 100>}`: shows a progress bar under the card. 0 hides it.

The Crushing Press starts a job like this, then finishes it 4 ticks later:

```mcfunction
execute unless function pnp:api/machine/take run return 0
data modify entity @s item.components."minecraft:custom_data".pj set value {t:0}
data modify entity @s item.components."minecraft:custom_data".pj.c set from storage pnp:machine io.c
function pnp:api/machine/progress {p:1}
```

## Raids

```mcfunction
data modify storage pnp:cards raiders append value {c:"husk",from:3,n:2}
```

Every raid from raid `from` to raid `to` brings `n` more of that enemy, on top of the usual raiders. `from` defaults to 1, `to` to forever, and `n` to 1. Any enemy card works, including your own.

## PvP Stealing

`pnp:cards steal` lists the cards invaders go for, in order. Each invader that survives takes the first card on the list it can find on the table it raided. Use `prepend` to put yours first, or `append` to put it last:

```mcfunction
data modify storage pnp:cards steal prepend value "golden_carrot"
```

The built-in list starts with Emerald Blocks, Diamonds, and Emeralds, and ends with Oak Logs and Cobblestone.

## Need Something Else?

If your addon needs a hook that isn't here, [x:issues|open an issue on GitHub].
""")
    write_page('addons.html', 'Addons', body,
               'How to make an addon for Packs & Pillagers: cards, recipes, food, gear, machines, raids, and PvP stealing.')


def export_name(d, c):
    g = d.get('give') or ''
    if not g or not d.get('gn'):
        return ''
    m = re.search(r'custom_name=\{(?:text:"([^"]+)"|translate:"[^"]*",fallback:"([^"]+)")', g)
    if m:
        name = m.group(1) or m.group(2)
    else:
        base = g.split('[', 1)[0].split(':')[-1]
        name = nm(c) if base == 'potion' else base.replace('_', ' ').title()
    return (f'{d["gn"]}&times; ' if d['gn'] > 1 else '') + esc(name)


def stats_html(c, rel):
    d = defs[c]
    k = d.get('kind')
    em = texicon('minecraft:item/emerald', rel)
    rows = []
    if k == 'shop' and d.get('price'):
        rows.append(('Price', '10 Emerald Blocks' if c == 'shop_side' else f'{em}{d["price"]} emeralds'))
        if d.get('pack') in defs:
            rows.append(('Sells', clink(d['pack'], rel)))
    if d.get('sell'):
        rows.append(('Sells for', f'{em}{fmt_sell(d["sell"])} emerald{"" if d["sell"] == 4 else "s"}'))
    elif k in ('res', 'food', 'tool', 'weapon', 'armor', 'trinket', 'struct', 'animal') and c != 'emerald':
        rows.append(('Sells for', "Can't be sold"))
    if k in ('unit', 'enemy', 'baby'):
        if d.get('hp'):
            rows.append(('Health', str(d['hp'])))
        rows.append(('Attack', str(d.get('atk', 0))))
    elif d.get('atk'):
        rows.append(('Attack', '+' + str(d['atk'])))
    if d.get('food'):
        rows.append(('Food', f'{d["food"]} points' + (', counts as cooked' if d.get('meal') else '')))
    if d.get('heal'):
        rows.append(('Heals', 'Fully' if d['heal'] >= 99 else f'{d["heal"]} health'))
    if k == 'pack' and d.get('count'):
        rows.append(('Cards', str(d['count'])))
    if c in SPEC_OF:
        rows.append(('Job', f'{SPEC_OF[c][0]}. {SPEC_OF[c][1]}.'))
    if c in TALIS:
        rows.append(('As a talisman', TALIS[c]))
    if d.get('traits'):
        rows.append(('Traits', esc(join_and(TRAITS.get(t, t) for t in d['traits']))))
    if d.get('eq'):
        rows.append(('Carries', join_and(clink(v, rel) for v in d['eq'].values())))
    if d.get('loot'):
        rows.append(('Drops', join_and(clink(v, rel) for v in dict.fromkeys(d['loot']))))
    if c in AC:
        v = AC[c]
        need = join_and(((str(q) + '&times; ') if q > 1 else '') + clink(x, rel) for x, q in v.get('need', {}).items())
        rows.append(('Autocrafter', f'{need} in {v.get("t", 0) / 20:g}s'))
    ex = export_name(d, c)
    if ex:
        rows.append(('A Bundle sends home', ex))
    if not rows:
        return ''
    return '<dl class="stats">' + ''.join(f'<dt>{a}</dt><dd>{b}</dd>' for a, b in rows) + '</dl>'


def get_blocks(c, rel):
    blocks = []
    if MADE.get(c):
        blocks.append(('Made From', tiles(MADE[c], rel)))
    fi = found_items(c, rel)
    if fi:
        blocks.append(('Found In', f'<ul class="pl src">{fi}</ul>'))
    if LOOT.get(c):
        blocks.append(('Loot From', '<ul class="pl src">' + ''.join(f'<li>{clink(s, rel)}</li>' for s in dict.fromkeys(LOOT[c])) + '</ul>'))
    if DROPPED.get(c):
        blocks.append(('Dropped By', '<ul class="pl src">' + ''.join(f'<li>{clink(s, rel)}</li>' for s in DROPPED[c]) + '</ul>'))
    if c in WORLD:
        blocks.append(('Out in the World', f'<p>{WORLD[c]}.</p>'))
    if c in CAPTURE:
        blocks.append(('Out in the World', '<p>Right-click one out in the world with your Card Board to bring it onto your table.</p>'))
    if REVEAL.get(c):
        blocks.append(('Comes Free With', '<p>You learn it anyway the first time you get '
                       + join_and((clink(x, rel) for x in REVEAL[c]), 'or') + '.</p>'))
    if c in NOTES:
        blocks.append(('Other Ways', f'<p>{md(NOTES[c], rel)}</p>'))
    return blocks


def page_card(c, prev, nxt):
    rel = '../'
    d = defs[c]
    k = d.get('kind')
    parts = []
    blocks = get_blocks(c, rel)
    if blocks:
        parts.append(h2('How to Get It') + ''.join(h3(t) + b for t, b in blocks))
    if c in ideas and ideas[c].get('r'):
        parts.append(h2('Teaches') + tiles([x['v'] for x in ideas[c]['r']], rel))
    if k == 'pack' and d.get('pool'):
        n = d.get('count', 1)
        parts.append(h2("What's Inside") + f'<p>Opening it gives {n} card{"s" if n != 1 else ""}. Each one comes from this list:</p>'
                     + pool_list(d['pool'], rel, cls='pl cols'))
    if k == 'node':
        gives = [r for r in USED.get(c, []) if any(o.startswith('@') for o in R[r]['out'])]
        if gives:
            sec = h2('What It Gives')
            for r in gives:
                rr = R[r]
                extra = [x for x in rr['in'] if x not in ('villager', c)]
                label = ('With ' + join_and(esc(cname(x)) for x in extra)) if extra else 'With a Villager'
                p = next(o[1:] for o in rr['out'] if o.startswith('@'))
                sec += f'<h3>{label}</h3><p class="dim">Every {fmt_time(rr["time"])}, one of these:</p>' + pool_list(p, rel, cls='pl cols')
            parts.append(sec)
    gi = next((x for x in GATE_INFO if x[0] == c), None)
    if gi:
        boss = f'the {clink(gi[2], rel)}' if gi[2] else 'a boss'
        learn = f' Win and you learn the {clink(gi[3], rel)}.' if gi[3] else ''
        parts.append(h2('Inside') + f'<p>A few waves of enemies, and then {boss}.{learn} '
                     'The loot can include:</p><ul class="pl src">' + ''.join(f'<li>{clink(x, rel)}</li>' for x in gi[5]) + '</ul>')
    pi = next((x for x in GATE_INFO if x[3] == c), None)
    if pi:
        cost = f'Each run costs a {clink(pi[4], rel)} and takes' if pi[4] else 'It takes'
        parts.append(h2('Using It') + f'<p>{cost} your villagers back to the {pi[1]} and the {clink(pi[2], rel) if pi[2] else "boss"}.</p>')
    if k == 'enemy' and where_of(c):
        parts.append(h2('Where You Meet It') + f'<p>{esc(where_of(c))}.</p>')
    used = USED.get(c, [])
    if used:
        if len(used) <= 12:
            parts.append(h2('Used In') + tiles(used, rel))
        else:
            labels = list(dict.fromkeys(out_label(r, rel) for r in used))
            parts.append(h2('Used In') + f'<p>{esc(cname(c))} goes into {len(used)} recipes. They make:</p>'
                         f'<p class="many">{", ".join(labels)}</p><p><a href="../recipes.html">See every recipe</a></p>')
    cat = CAT_OF.get(c, 'more')
    pager = '<nav class="pager" aria-label="More cards">' + (f'<a href="{prev}.html">Previous: {esc(cname(prev))}</a>' if prev else '<span></span>') \
            + (f'<a href="{nxt}.html">Next: {esc(cname(nxt))}</a>' if nxt else '') + '</nav>'
    body = (f'<p class="crumbs"><a href="../cards.html">Cards</a> / <a href="../cards.html#{cat}">{esc(CAT_NAME[cat])}</a></p>'
            f'<div class="chead"><div class="big">{card(c, rel, link=False)}</div><div class="cinfo"><h1>{esc(cname(c))}</h1>'
            f'<p class="kn"><i class="sw k-{tk_of(c)}"></i>{esc(d.get("kn", ""))}</p><p class="desc">{esc(d.get("desc", ""))}</p>'
            f'{stats_html(c, rel)}</div></div>' + ''.join(parts) + pager)
    write_page(f'card/{c}.html', cname(c), body, d.get('desc', ''), search=False)
    art, blk = art_of(c)
    SEARCH.append({'n': cname(c), 'u': f'card/{c}.html', 'k': d.get('kn', ''), 'a': tex_path(art) if art else '',
                   'h': 1 if art and hi(art) else 0})


def main():
    if os.path.exists(OUT) and os.listdir(OUT):
        if not os.path.exists(os.path.join(OUT, 'assets', 'site.js')):
            sys.exit(f"{OUT} already has other files in it. Use an empty folder or an old wiki build.")
        shutil.rmtree(OUT)
    os.makedirs(OUT, exist_ok=True)
    fetch_textures([VIS[c]['art'] for c in defs if c in VIS and VIS[c].get('art') and c not in HIDE] + EXTRA_TEX
                   + [idea_tex(i)[0] for i in ideas if idea_tex(i)])
    write_assets()
    for f in (page_home, page_getting_started, page_table, page_cards, page_recipes, page_ideas, page_packs, page_quests,
              page_supper, page_villagers, page_combat, page_machines, page_gateways, page_nether, page_world,
              page_multiplayer, page_addons):
        f()
    for i, c in enumerate(BROWSE):
        page_card(c, BROWSE[i - 1] if i else None, BROWSE[i + 1] if i + 1 < len(BROWSE) else None)
    write_search()
    open(os.path.join(OUT, '.nojekyll'), 'w').close()
    n = sum(len(fs) for _, _, fs in os.walk(OUT))
    print(f'built {len(BROWSE)} card pages, {len(TEXSIZE)} textures, {n} files in {OUT}')


if __name__ == '__main__':
    main()


