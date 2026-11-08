data modify storage pnp:cards unlock.emerald append value 38
data modify storage pnp:cards unlock.gold_ingot append value 36
data modify storage pnp:cards unlock.gold_ingot append value 58
data modify storage pnp:cards unlock.leather append value 46
data modify storage pnp:cards unlock.iron_pickaxe append value 26
data modify storage pnp:cards unlock.iron_pickaxe append value 28
data modify storage pnp:cards unlock.hopper append value 47
data remove storage pnp:cards pools.adventure.e[{c:"idea_mountain"}]
data remove storage pnp:cards pools.adventure.e[{c:"idea_caving"}]
data modify storage pnp:cards pools.adventure.e[{c:"mountain"}].w set value 3
data modify storage pnp:cards pools.adventure.e[{c:"cave"}].w set value 2
data modify storage pnp:cards pools.adventure.e[{c:"torch"}].w set value 4
data remove storage pnp:cards pools.mountain.e[{c:"idea_caving"}]
data modify storage pnp:cards pools.mountain.e[{c:"cave"}].w set value 2
data modify storage pnp:cards pools.trader.e[{c:"idea_wrench"}].c set value "evocation_staff"
data modify storage pnp:cards pools.trader.e[{c:"idea_trade"}].c set value "enchanted_book"
function pnp:chapter2/pool_add {p:"pond",c:"sugar_cane",w:2}
function pnp:chapter2/pool_add {p:"farm",c:"sugar_cane",w:2}
function pnp:chapter2/pool_add {p:"ruined_portal",c:"gravel",w:2}
function pnp:chapter2/pool_add {p:"ruined_portal",c:"lava_pool",w:1}
data modify storage pnp:cards pools.humble_g set value {t:8,e:[{c:"oak_tree",w:2},{c:"rock",w:2},{c:"berry_bush",w:2},{c:"forest",w:1},{c:"villager",w:1}]}
data modify storage pnp:cards pools.farm_g set value {t:19,e:[{c:"wheat",w:3},{c:"carrot",w:3},{c:"potato",w:3},{c:"sweet_berries",w:2},{c:"sheep",w:2},{c:"cow",w:2},{c:"chicken",w:2},{c:"pig",w:2}]}
data modify storage pnp:cards pools.adventure_g set value {t:9,e:[{c:"forest",w:2},{c:"mountain",w:3},{c:"cave",w:2},{c:"desert",w:2}]}
data modify storage pnp:cards pools.caving_g set value {t:11,e:[{c:"copper_ingot",w:4},{c:"iron_ingot",w:4},{c:"gold_ingot",w:2},{c:"diamond",w:1}]}
data modify storage pnp:cards pools.combat_g set value {t:8,e:[{c:"stone_sword",w:3},{c:"iron_sword",w:1},{c:"mace",w:1},{c:"wolf",w:2},{c:"villager",w:1}]}
data modify storage pnp:cards pfirst set value {nether_wastes:["gold_nugget","gold_nugget","piglin"],crimson_forest:["nether_wart","hoglin"],soul_sand_valley:["soul_sand","soul_sand","bone"],warped_forest:["ender_pearl"],basalt_deltas:["magma_cream"],ruined_portal:["obsidian","obsidian","flint","lava_pool"]}
data modify storage pnp:cards pity set value {nether_wastes:{k:"wastes",c:"gate_fortress",n:10},crimson_forest:{k:"crimson",c:"gate_bastion",n:10},nether_deep:{k:"deep",c:"ancient_debris",n:12},nether_deep_rich:{k:"deep",c:"ancient_debris",n:12}}
data modify storage pnp:cards recipes append value {r:204,in:{villager:1,map_trial:1},n:2,time:300,use:["map_trial"],out:["gate_trial"],il:[{c:"villager",n:1},{c:"map_trial",n:1}]}
data modify storage pnp:cards free.r204 set value 1b
data modify storage pnp:cards recipes append value {r:205,in:{villager:1,map_mansion:1},n:2,time:300,use:["map_mansion"],out:["gate_mansion"],il:[{c:"villager",n:1},{c:"map_mansion",n:1}]}
data modify storage pnp:cards free.r205 set value 1b
data modify storage pnp:cards recipes append value {r:206,in:{villager:1,map_monument:1},n:2,time:300,use:["map_monument"],out:["gate_monument"],il:[{c:"villager",n:1},{c:"map_monument",n:1}]}
data modify storage pnp:cards free.r206 set value 1b
data modify storage pnp:cards recipes append value {r:207,in:{villager:1,map_city:1},n:2,time:300,use:["map_city"],out:["gate_city"],il:[{c:"villager",n:1},{c:"map_city",n:1}]}
data modify storage pnp:cards free.r207 set value 1b
data modify storage pnp:cards recipes append value {r:208,in:{trading_post:1,emerald:8},n:9,time:20,use:["emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald"],out:["farm_pack"],il:[{c:"trading_post",n:1},{c:"emerald",n:8}]}
data modify storage pnp:cards unlock.trading_post append value 208
data modify storage pnp:cards recipes append value {r:209,in:{trading_post:1,emerald:14},n:15,time:20,use:["emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald"],out:["caving_pack"],il:[{c:"trading_post",n:1},{c:"emerald",n:14}]}
data modify storage pnp:cards unlock.trading_post append value 209
data modify storage pnp:cards recipes append value {r:210,in:{trading_post:1,emerald:16},n:17,time:20,use:["emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald","emerald"],out:["combat_pack"],il:[{c:"trading_post",n:1},{c:"emerald",n:16}]}
data modify storage pnp:cards unlock.trading_post append value 210
function pnp:admin/codex_defs
function pnp:quest_board/rework_defs
function pnp:progression/phase3
function pnp:chapter2/extras
function pnp:chapter2/automation
function pnp:chapter2/overworld
function pnp:chapter2/raiders
function pnp:chapter2/enchanting
function pnp:chapter2/extras2
function pnp:progression/tiers
