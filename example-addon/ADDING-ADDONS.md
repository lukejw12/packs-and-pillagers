## Welcome
Hi ppl! so I dont expect this pack to get popular enough to warrant adding support for addons, but with how I had everything formatted it wasnt a crazy addition, so I figured why not, anyways heres a simple guide!


# Packs & Pillagers Addons
Addons are separate data packs that add cards, recipes, and food to Packs & Pillagers. Don't edit the main pack, just add to its storage from the load hook. There's a working example in the addon datapack attatched next to this file.

## Load Hook

P&P rebuilds all its data every time it loads, so anything added from `minecraft:load` gets wiped. Use `#pnp:load` instead. It runs right after P&P finishes loading.

`data/pnp/tags/function/load.json`:
json:
```
{
  "values": ["yourpack:register"]
}
```

## Cards

Write the card into `pnp:cards defs.<id>`, then call `add_card`:

function:
```
data modify storage pnp:cards defs.golden_carrot set value {id:"golden_carrot",name:"Golden Carrot",kind:"food",food:6,meal:6,heal:4,sell:12,desc:"Food: 6. A carrot dipped in gold.",l1:"Food: 6. A carrot",l2:"dipped in gold.",sprite:"item/golden_carrot"}
function pnp:api/add_card {id:"golden_carrot",category:"c2"}
```

`add_card` fills in aything you leave out and adds the card to the Cardopedia, plus supper if it's food. Only `id`, `name`, and `kind` are required. The rest:

- `desc`: Cardopedia description
- `l1` to `l4`: tooltip lines, about 22 characters each
- `hp`, `atk`: health and attack
- `sell`: sell price in quarter emeralds (4 is 1 emerald)
- `heal`: health it gives a hurt villager
- `give`, `gn`: the vanilla item and count it turns into when exported
- `sprite`, `atlas`: the icon next to its name (atlas defaults to `minecraft:items`)
- `food`, `meal`, `eat_order`: see Food
- `traits`, `cooldown`, `eq`, `loot`: see Fighters

**Kinds:** `res`, `food` (eaten at supper), `unit` (fights for you), `enemy` (monster), `animal` (wanders around), `struct`, `node` (renewable source), `tool`, `weapon`, `armor`, and `trinket`. The other kinds are for built-in cards.

**Categories:** `c1` Resources, `c2` Food, `c3` Nature, `c4` Buildings, `c5` People, `c6` Gear, `c7` Monsters, `c8` Ideas, and `c9` Adventure.

Card ids are shared between addons, so give generic ones a prefix. You can change built-in cards the same way, like `data modify storage pnp:cards defs.bread.food set value 6`. For a custom Cardopedia tooltip, set `pnp:pedia2 tip.<id>` after calling `add_card`.

## Art

Two files in a resource pack. `assets/pnp/items/card/golden_carrot.json`:
jsn:
```
{
  "model": {
    "type": "minecraft:model",
    "model": "pnp:card/golden_carrot"
  }
}
```

`assets/pnp/models/card/golden_carrot.json`:
hson:
```
{
  "parent": "pnp:card/template_food_item",
  "textures": {
    "art": "minecraft:item/golden_carrot"
  }
}
```

The parent is the card frame: `pnp:card/template_<kind>_item`, or `template_<kind>_block` for block art. `art` can be any texture.

## Recipes

function:
```
data modify storage pnp:cards recipes append value {r:1001,in:{villager:1,carrot:1,gold_ingot:1},n:3,time:80,use:["carrot","gold_ingot"],out:["golden_carrot"],il:[{c:"villager",n:1},{c:"carrot",n:1},{c:"gold_ingot",n:1}]}
data modify storage pnp:cards free.r1001 set value 1b
```

- `r`: recipe number. P&P uses under 1000, so pick your own range above that, like 1000 to 1099.
- `in`: the cards needed. `n` is the total, and the stack has to match it exactly.
- `time`: in tenths of a second, so 80 is 8 seconds.
- `use`: cards that get used up, once per copy. Anything not listed stays.
- `out`: cards it makes, or `"@name"` for a random pick from `pnp:cards pools.<name>`.
- `il`: the same cards as `in`, written as a list. Used for hints.

`free.r<number>` makes the recipe known from the start. You can add it to an idea's `r` list instead (`pnp:cards ideas.<idea>.r`), but anyone who already learned that idea won't get it.

Pools look like `{t:10,e:[{c:"carrot",w:6},{c:"potato",w:4}]}`, where `t` is the total weight.

## Food

Use `kind:"food"` with:

- `food`: points it's worth. Villagers eat 2, babies eat 1.
- `meal`: how much of it counts as cooked. Villagers get Well Fed when at least half of what they ate was cooked. Use the same number as `food` for cooked food and 0 for raw.
- `eat_order`: optional. The lowest gets eaten first. Defaults to `food`.

Barrels holding it count automatically.

## Fighters

Use `kind:"enemy"` or `kind:"unit"` with `hp` and `atk`, plus any of these:

- `traits`: any of `ranged`, `beam`, `knock`, `fast`, `undead` (burns in daylight), and `boss`, like `{ranged:1b,undead:1b}`
- `cooldown`: ticks between special attacks
- `eq`: starting gear, with `t` for a weapon or tool, `a` for armor, and `s` for special, like `{t:"bow"}`
- `loot`: cards it drops, like `["bone"]`

## Not Supported Yet

- Gear effects. You can make a card equippable with `pnp:cards slot.<id>` (`"t"`, `"a"`, or `"s"`), but it won't do anything yet.
- Wrench ports for new machines.
- Raid line-ups and PvP stealing.

Open an issue on GitHub if you need one of these, but it will likely get added in a future update when I'm not actively writing this at 2 am :D
