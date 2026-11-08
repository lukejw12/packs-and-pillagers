data modify storage pnp:cards defs.obsidian set value {id:"obsidian",name:"Obsidian",kind:"res",sell:4,desc:"Ten of them build a Nether Portal.",l1:"Ten of them build a",l2:"Nether Portal.",atlas:"minecraft:blocks",sprite:"block/obsidian"}
function pnp:api/add_card {id:"obsidian",category:"c1"}
data modify storage pnp:cards defs.crying_obsidian set value {id:"crying_obsidian",name:"Crying Obsidian",kind:"res",sell:4,desc:"Found in Ruined Portals. Sells well.",l1:"Found in Ruined",l2:"Portals. Sells well.",atlas:"minecraft:blocks",sprite:"block/crying_obsidian"}
function pnp:api/add_card {id:"crying_obsidian",category:"c1"}
data modify storage pnp:cards defs.gravel set value {id:"gravel",name:"Gravel",kind:"res",sell:1,desc:"Put a villager on it to find Flint.",l1:"Put a villager on it",l2:"to find Flint.",atlas:"minecraft:blocks",sprite:"block/gravel"}
function pnp:api/add_card {id:"gravel",category:"c1"}
data modify storage pnp:cards defs.flint set value {id:"flint",name:"Flint",kind:"res",sell:1,desc:"With an Iron Ingot, it makes Flint and Steel.",l1:"With an Iron Ingot,",l2:"it makes Flint and",l3:"Steel.",atlas:"minecraft:items",sprite:"item/flint"}
function pnp:api/add_card {id:"flint",category:"c1"}
data modify storage pnp:cards defs.flint_and_steel set value {id:"flint_and_steel",name:"Flint and Steel",kind:"tool",sell:3,desc:"Lights a Nether Portal. It isn't used up.",l1:"Lights a Nether",l2:"Portal. It isn't",l3:"used up.",atlas:"minecraft:items",sprite:"item/flint_and_steel"}
function pnp:api/add_card {id:"flint_and_steel",category:"c6"}
data modify storage pnp:cards defs.ruined_portal set value {id:"ruined_portal",name:"Ruined Portal",kind:"node",sell:0,desc:"Put a villager on it to salvage Obsidian, Flint and gold.",l1:"Put a villager on it",l2:"to salvage Obsidian,",l3:"Flint and gold.",atlas:"minecraft:blocks",sprite:"block/crying_obsidian"}
function pnp:api/add_card {id:"ruined_portal",category:"c3"}
data modify storage pnp:cards defs.nether_portal set value {id:"nether_portal",name:"Nether Portal",kind:"struct",sell:0,desc:"Right-click it to travel between tables. Stack cards on it to send them across. Pipe cards into it with the Wrench and they come out of the portal on your other table.",l1:"Right-click to travel.",l2:"Stack cards on it to",l3:"send them across.",atlas:"minecraft:blocks",sprite:"block/nether_portal"}
function pnp:api/add_card {id:"nether_portal",category:"c4"}
data modify storage pnp:cards defs.idea_nether_portal set from storage pnp:cards defs.idea_vault
data modify storage pnp:cards defs.idea_nether_portal.id set value "idea_nether_portal"
function pnp:api/add_card {id:"idea_nether_portal",category:"c8"}
data modify storage pnp:cards ideas.idea_nether_portal set value {name:"✦ Nether Portal",sprite:"block/nether_portal",atlas:"minecraft:blocks",r:[{v:161},{v:162}],h1:"Villager + 10 Obsidian",h2:"+ Flint and Steel",h3:"makes a Nether Portal"}
data modify storage pnp:cards recipes append value {r:161,in:{villager:1,obsidian:10,flint_and_steel:1},n:12,time:100,use:["obsidian","obsidian","obsidian","obsidian","obsidian","obsidian","obsidian","obsidian","obsidian","obsidian"],out:["nether_portal"],il:[{c:"villager",n:1},{c:"obsidian",n:10},{c:"flint_and_steel",n:1}]}
data modify storage pnp:cards recipes append value {r:162,in:{villager:1,crafting_table:1,flint:1,iron_ingot:1},n:4,time:40,use:["flint","iron_ingot"],out:["flint_and_steel"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"flint",n:1},{c:"iron_ingot",n:1}]}
data modify storage pnp:cards recipes append value {r:163,in:{villager:1,gravel:1},n:2,time:50,use:["gravel"],out:["@gravel"],il:[{c:"villager",n:1},{c:"gravel",n:1}]}
data modify storage pnp:cards recipes append value {r:164,in:{villager:1,ruined_portal:1},n:2,time:120,use:[],out:["@ruined_portal"],il:[{c:"villager",n:1},{c:"ruined_portal",n:1}]}
data modify storage pnp:cards pools.gravel set value {t:3,e:[{c:"flint",w:1},{c:"gravel",w:2}]}
data modify storage pnp:cards pools.ruined_portal set value {t:12,e:[{c:"obsidian",w:5},{c:"crying_obsidian",w:2},{c:"flint",w:2},{c:"flint_and_steel",w:1},{c:"gold_ingot",w:1},{c:"nothing",w:1}]}
data modify storage pnp:cards free.r163 set value 1b
data modify storage pnp:cards free.r164 set value 1b
data modify storage pnp:cards defs.charred_food set value {id:"charred_food",name:"Charred Food",kind:"food",sell:0,desc:"Food that sat too long on the Nether table. Worth half its food, and burns to Ash in 4 more days.",l1:"Worth half its food.",l2:"Burns to Ash in",l3:"4 more days.",atlas:"minecraft:items",sprite:"item/charcoal",food:1,meal:0,eat_order:0}
function pnp:api/add_card {id:"charred_food",category:"c2"}
data modify storage pnp:cards defs.ash set value {id:"ash",name:"Ash",kind:"res",sell:0,desc:"What's left of burnt food.",l1:"What's left of",l2:"burnt food.",atlas:"minecraft:items",sprite:"item/light_gray_dye"}
function pnp:api/add_card {id:"ash",category:"c1"}
data modify storage pnp:cards defs.bucket set value {id:"bucket",name:"Bucket",kind:"tool",sell:2,desc:"Fill it at a Pond or a Lava Pool.",l1:"Fill it at a Pond",l2:"or a Lava Pool.",atlas:"minecraft:items",sprite:"item/bucket"}
function pnp:api/add_card {id:"bucket",category:"c6"}
data modify storage pnp:cards defs.water_bucket set value {id:"water_bucket",name:"Water Bucket",kind:"res",sell:2,desc:"Pour it on a Lava Bucket to make Obsidian.",l1:"Pour it on a Lava",l2:"Bucket to make",l3:"Obsidian.",atlas:"minecraft:items",sprite:"item/water_bucket"}
function pnp:api/add_card {id:"water_bucket",category:"c1"}
data modify storage pnp:cards defs.lava_bucket set value {id:"lava_bucket",name:"Lava Bucket",kind:"res",sell:3,desc:"With a Water Bucket and a villager, it makes Obsidian. You keep the bucket.",l1:"With a Water Bucket,",l2:"it makes Obsidian.",l3:"You keep the bucket.",atlas:"minecraft:items",sprite:"item/lava_bucket"}
function pnp:api/add_card {id:"lava_bucket",category:"c1"}
data modify storage pnp:cards defs.lava_pool set value {id:"lava_pool",name:"Lava Pool",kind:"node",sell:0,desc:"A villager with a Bucket can fill it with lava.",l1:"A villager with a",l2:"Bucket can fill it",l3:"with lava.",atlas:"minecraft:blocks",sprite:"block/lava_still"}
function pnp:api/add_card {id:"lava_pool",category:"c3"}
data modify storage pnp:cards recipes append value {r:165,in:{villager:1,crafting_table:1,iron_ingot:3},n:5,time:40,use:["iron_ingot","iron_ingot","iron_ingot"],out:["bucket"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"iron_ingot",n:3}]}
data modify storage pnp:cards recipes append value {r:166,in:{villager:1,bucket:1,pond:1},n:3,time:30,use:["bucket"],out:["water_bucket"],il:[{c:"villager",n:1},{c:"bucket",n:1},{c:"pond",n:1}]}
data modify storage pnp:cards recipes append value {r:167,in:{villager:1,bucket:1,lava_pool:1},n:3,time:40,use:["bucket"],out:["lava_bucket"],il:[{c:"villager",n:1},{c:"bucket",n:1},{c:"lava_pool",n:1}]}
data modify storage pnp:cards recipes append value {r:168,in:{villager:1,lava_bucket:1,water_bucket:1},n:3,time:50,use:["lava_bucket"],out:["obsidian","bucket"],il:[{c:"villager",n:1},{c:"lava_bucket",n:1},{c:"water_bucket",n:1}]}
data modify storage pnp:cards ideas.idea_nether_portal.r append value {v:165}
data modify storage pnp:cards ideas.idea_nether_portal.r append value {v:166}
data modify storage pnp:cards ideas.idea_nether_portal.r append value {v:167}
data modify storage pnp:cards ideas.idea_nether_portal.r append value {v:168}
data modify storage pnp:cards defs.netherrack set value {id:"netherrack",name:"Netherrack",kind:"res",sell:1,desc:"Common Nether stone. Builds Blaze Spawners and copies Netherite Templates.",l1:"Common Nether stone.",l2:"Builds Blaze Spawners",l3:"and copies Netherite",atlas:"minecraft:blocks",sprite:"block/netherrack",l4:"Templates."}
function pnp:api/add_card {id:"netherrack",category:"c1"}
data modify storage pnp:cards defs.nether_quartz set value {id:"nether_quartz",name:"Nether Quartz",kind:"res",sell:3,desc:"Found on the Nether Wastes. Sells well.",l1:"Found on the Nether",l2:"Wastes. Sells well.",atlas:"minecraft:items",sprite:"item/quartz"}
function pnp:api/add_card {id:"nether_quartz",category:"c1"}
data modify storage pnp:cards defs.gold_nugget set value {id:"gold_nugget",name:"Gold Nugget",kind:"res",sell:1,desc:"Nine of them make a Gold Ingot.",l1:"Nine of them make",l2:"a Gold Ingot.",atlas:"minecraft:items",sprite:"item/gold_nugget"}
function pnp:api/add_card {id:"gold_nugget",category:"c1"}
data modify storage pnp:cards defs.glowstone_dust set value {id:"glowstone_dust",name:"Glowstone Dust",kind:"res",sell:2,desc:"Strengthens potions and charges a Respawn Anchor.",l1:"Strengthens potions",l2:"and charges a",l3:"Respawn Anchor.",atlas:"minecraft:items",sprite:"item/glowstone_dust"}
function pnp:api/add_card {id:"glowstone_dust",category:"c1"}
data modify storage pnp:cards defs.soul_sand set value {id:"soul_sand",name:"Soul Sand",kind:"res",sell:1,desc:"Nether Wart grows on it. Four are needed to summon the Wither.",l1:"Nether Wart grows",l2:"on it. Four summon",l3:"the Wither.",atlas:"minecraft:blocks",sprite:"block/soul_sand"}
function pnp:api/add_card {id:"soul_sand",category:"c1"}
data modify storage pnp:cards defs.soul_soil set value {id:"soul_soil",name:"Soul Soil",kind:"res",sell:1,desc:"Found in Soul Sand Valleys. Builds the Basalt Generator.",l1:"Found in Soul Sand",l2:"Valleys. Builds the",l3:"Basalt Generator.",atlas:"minecraft:blocks",sprite:"block/soul_soil"}
function pnp:api/add_card {id:"soul_soil",category:"c1"}
data modify storage pnp:cards defs.basalt set value {id:"basalt",name:"Basalt",kind:"res",sell:1,desc:"Volcanic stone from the Basalt Deltas.",l1:"Volcanic stone from",l2:"the Basalt Deltas.",atlas:"minecraft:blocks",sprite:"block/basalt_side"}
function pnp:api/add_card {id:"basalt",category:"c1"}
data modify storage pnp:cards defs.blackstone set value {id:"blackstone",name:"Blackstone",kind:"res",sell:1,desc:"Common Nether stone. Builds the Barter Station.",l1:"Common Nether stone.",l2:"Builds the Barter",l3:"Station.",atlas:"minecraft:blocks",sprite:"block/blackstone"}
function pnp:api/add_card {id:"blackstone",category:"c1"}
data modify storage pnp:cards defs.crimson_stem set value {id:"crimson_stem",name:"Crimson Stem",kind:"res",sell:1,desc:"Nether wood. A villager at a Crafting Table makes Nether Planks from it.",l1:"Nether wood. Makes",l2:"Nether Planks at a",l3:"Crafting Table.",atlas:"minecraft:blocks",sprite:"block/crimson_stem"}
function pnp:api/add_card {id:"crimson_stem",category:"c1"}
data modify storage pnp:cards defs.warped_stem set value {id:"warped_stem",name:"Warped Stem",kind:"res",sell:1,desc:"Nether wood. A villager at a Crafting Table makes Nether Planks from it.",l1:"Nether wood. Makes",l2:"Nether Planks at a",l3:"Crafting Table.",atlas:"minecraft:blocks",sprite:"block/warped_stem"}
function pnp:api/add_card {id:"warped_stem",category:"c1"}
data modify storage pnp:cards defs.nether_planks set value {id:"nether_planks",name:"Nether Planks",kind:"res",sell:1,desc:"Wood that won't burn, for building on the Nether table.",l1:"Wood that won't",l2:"burn, for building",l3:"in the Nether.",atlas:"minecraft:blocks",sprite:"block/crimson_planks"}
function pnp:api/add_card {id:"nether_planks",category:"c1"}
data modify storage pnp:cards defs.crimson_fungus set value {id:"crimson_fungus",name:"Crimson Fungus",kind:"res",sell:1,desc:"Found in Crimson Forests. Brew it with a Gold Ingot into an Enchanted Crimson Fungus.",l1:"Found in Crimson",l2:"Forests. Brew it with",atlas:"minecraft:blocks",sprite:"block/crimson_fungus",l3:"Gold for an Enchanted",l4:"Crimson Fungus."}
function pnp:api/add_card {id:"crimson_fungus",category:"c1"}
data modify storage pnp:cards defs.warped_fungus set value {id:"warped_fungus",name:"Warped Fungus",kind:"res",sell:1,desc:"Found in Warped Forests. Hoglins stay away from it.",l1:"Found in Warped",l2:"Forests. Hoglins stay",l3:"away from it.",atlas:"minecraft:blocks",sprite:"block/warped_fungus"}
function pnp:api/add_card {id:"warped_fungus",category:"c1"}
data modify storage pnp:cards defs.nether_wart set value {id:"nether_wart",name:"Nether Wart",kind:"res",sell:2,desc:"The base of every Nether potion.",l1:"The base of every",l2:"Nether potion.",atlas:"minecraft:items",sprite:"item/nether_wart"}
function pnp:api/add_card {id:"nether_wart",category:"c1"}
data modify storage pnp:cards defs.magma_cream set value {id:"magma_cream",name:"Magma Cream",kind:"res",sell:3,desc:"Brewed into Fire Resistance potions.",l1:"Brewed into Fire",l2:"Resistance potions.",atlas:"minecraft:items",sprite:"item/magma_cream"}
function pnp:api/add_card {id:"magma_cream",category:"c1"}
data modify storage pnp:cards defs.ender_pearl set value {id:"ender_pearl",name:"Ender Pearl",kind:"res",sell:4,desc:"Found in Warped Forests and on Endermen. With Blaze Powder, it makes an Eye of Ender.",l1:"From Warped Forests",l2:"and Endermen. With",l3:"Blaze Powder, makes",atlas:"minecraft:items",sprite:"item/ender_pearl",l4:"an Eye of Ender."}
function pnp:api/add_card {id:"ender_pearl",category:"c1"}
data modify storage pnp:cards defs.nether_wastes set value {id:"nether_wastes",name:"Nether Wastes",kind:"node",sell:0,desc:"Put a villager on it to gather Netherrack, Quartz, Gold Nuggets and Glowstone. Sometimes leads to other biomes.",l1:"Gathers Netherrack,",l2:"Quartz, Gold and",l3:"Glowstone.",atlas:"minecraft:blocks",sprite:"block/nether_gold_ore"}
function pnp:api/add_card {id:"nether_wastes",category:"c3"}
data modify storage pnp:cards defs.crimson_forest set value {id:"crimson_forest",name:"Crimson Forest",kind:"node",sell:0,desc:"Put a villager on it to gather Crimson Stems, Crimson Fungus and Nether Wart.",l1:"Gathers Crimson",l2:"Stems, Fungus and",l3:"Nether Wart.",atlas:"minecraft:blocks",sprite:"block/crimson_nylium"}
function pnp:api/add_card {id:"crimson_forest",category:"c3"}
data modify storage pnp:cards defs.warped_forest set value {id:"warped_forest",name:"Warped Forest",kind:"node",sell:0,desc:"Put a villager on it to gather Warped Stems, Warped Fungus and the odd Ender Pearl.",l1:"Gathers Warped",l2:"Stems, Fungus and",l3:"Ender Pearls.",atlas:"minecraft:blocks",sprite:"block/warped_nylium"}
function pnp:api/add_card {id:"warped_forest",category:"c3"}
data modify storage pnp:cards defs.soul_sand_valley set value {id:"soul_sand_valley",name:"Soul Sand Valley",kind:"node",sell:0,desc:"Put a villager on it to gather Soul Sand, Soul Soil and Bones.",l1:"Gathers Soul Sand,",l2:"Soul Soil and Bones.",atlas:"minecraft:blocks",sprite:"block/soul_fire_0"}
function pnp:api/add_card {id:"soul_sand_valley",category:"c3"}
data modify storage pnp:cards defs.basalt_deltas set value {id:"basalt_deltas",name:"Basalt Deltas",kind:"node",sell:0,desc:"Put a villager on it to gather Basalt, Blackstone and Magma Cream.",l1:"Gathers Basalt,",l2:"Blackstone and",l3:"Magma Cream.",atlas:"minecraft:blocks",sprite:"block/basalt_top"}
function pnp:api/add_card {id:"basalt_deltas",category:"c3"}
data modify storage pnp:cards recipes append value {r:169,in:{villager:1,ruined_portal:1,obsidian:4,flint_and_steel:1},n:7,time:100,use:["ruined_portal","obsidian","obsidian","obsidian","obsidian"],out:["nether_portal"],il:[{c:"villager",n:1},{c:"ruined_portal",n:1},{c:"obsidian",n:4},{c:"flint_and_steel",n:1}]}
data modify storage pnp:cards ideas.idea_nether_portal.r append value {v:169}
data modify storage pnp:cards recipes append value {r:170,in:{villager:1,nether_wastes:1},n:2,time:100,use:[],out:["@nether_wastes"],il:[{c:"villager",n:1},{c:"nether_wastes",n:1}]}
data modify storage pnp:cards recipes append value {r:171,in:{villager:1,crimson_forest:1},n:2,time:100,use:[],out:["@crimson_forest"],il:[{c:"villager",n:1},{c:"crimson_forest",n:1}]}
data modify storage pnp:cards recipes append value {r:172,in:{villager:1,warped_forest:1},n:2,time:100,use:[],out:["@warped_forest"],il:[{c:"villager",n:1},{c:"warped_forest",n:1}]}
data modify storage pnp:cards recipes append value {r:173,in:{villager:1,soul_sand_valley:1},n:2,time:100,use:[],out:["@soul_sand_valley"],il:[{c:"villager",n:1},{c:"soul_sand_valley",n:1}]}
data modify storage pnp:cards recipes append value {r:174,in:{villager:1,basalt_deltas:1},n:2,time:100,use:[],out:["@basalt_deltas"],il:[{c:"villager",n:1},{c:"basalt_deltas",n:1}]}
data modify storage pnp:cards recipes append value {r:175,in:{villager:1,crafting_table:1,crimson_stem:1},n:3,time:40,use:["crimson_stem"],out:["nether_planks","nether_planks","nether_planks","nether_planks"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"crimson_stem",n:1}]}
data modify storage pnp:cards recipes append value {r:176,in:{villager:1,crafting_table:1,warped_stem:1},n:3,time:40,use:["warped_stem"],out:["nether_planks","nether_planks","nether_planks","nether_planks"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"warped_stem",n:1}]}
data modify storage pnp:cards recipes append value {r:177,in:{villager:1,crafting_table:1,gold_nugget:9},n:11,time:40,use:["gold_nugget","gold_nugget","gold_nugget","gold_nugget","gold_nugget","gold_nugget","gold_nugget","gold_nugget","gold_nugget"],out:["gold_ingot"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"gold_nugget",n:9}]}
data modify storage pnp:cards pools.nether_wastes set value {t:100,e:[{c:"netherrack",w:40},{c:"nether_quartz",w:22},{c:"gold_nugget",w:20},{c:"glowstone_dust",w:8},{c:"crimson_forest",w:3},{c:"soul_sand_valley",w:3},{c:"warped_forest",w:2},{c:"basalt_deltas",w:2}]}
data modify storage pnp:cards pools.crimson_forest set value {t:100,e:[{c:"crimson_stem",w:40},{c:"crimson_fungus",w:30},{c:"nether_wart",w:15},{c:"netherrack",w:15}]}
data modify storage pnp:cards pools.warped_forest set value {t:100,e:[{c:"warped_stem",w:45},{c:"warped_fungus",w:35},{c:"netherrack",w:15},{c:"ender_pearl",w:5}]}
data modify storage pnp:cards pools.soul_sand_valley set value {t:100,e:[{c:"soul_sand",w:40},{c:"soul_soil",w:30},{c:"bone",w:25},{c:"nothing",w:5}]}
data modify storage pnp:cards pools.basalt_deltas set value {t:100,e:[{c:"basalt",w:45},{c:"blackstone",w:35},{c:"magma_cream",w:15},{c:"gold_nugget",w:5}]}
data modify storage pnp:cards free.r170 set value 1b
data modify storage pnp:cards free.r171 set value 1b
data modify storage pnp:cards free.r172 set value 1b
data modify storage pnp:cards free.r173 set value 1b
data modify storage pnp:cards free.r174 set value 1b
data modify storage pnp:cards free.r175 set value 1b
data modify storage pnp:cards free.r176 set value 1b
data modify storage pnp:cards free.r177 set value 1b
data modify storage pnp:cards defs.zombified_piglin set value {id:"zombified_piglin",name:"Zombified Piglin",kind:"enemy",hp:6,atk:2,traits:{neutral:1b},loot:["gold_nugget","rotten_flesh"],sell:0,desc:"Leaves you alone until one is hit. Then the whole group turns on you.",l1:"Ignores you until",l2:"one is hit. Then the",l3:"whole group attacks.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_zombified_piglin"}
function pnp:api/add_card {id:"zombified_piglin",category:"c7"}
data modify storage pnp:cards defs.hoglin set value {id:"hoglin",name:"Hoglin",kind:"enemy",hp:10,atk:2,traits:{knock:1b},loot:["porkchop","porkchop","leather"],sell:0,desc:"Charges and knocks fighters back. Stays away from Warped Fungus.",l1:"Charges and knocks",l2:"fighters back. Avoids",l3:"Warped Fungus.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_hoglin"}
function pnp:api/add_card {id:"hoglin",category:"c7"}
data modify storage pnp:cards defs.magma_cube set value {id:"magma_cube",name:"Magma Cube",kind:"enemy",hp:6,atk:2,traits:{fire:1b},loot:["magma_cube_small","magma_cube_small"],sell:0,desc:"Splits into two Small Magma Cubes when it dies.",l1:"Splits into two",l2:"Small Magma Cubes",l3:"when it dies.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_magma_cube"}
function pnp:api/add_card {id:"magma_cube",category:"c7"}
data modify storage pnp:cards defs.magma_cube_small set value {id:"magma_cube_small",name:"Small Magma Cube",kind:"enemy",hp:2,atk:1,traits:{fire:1b},loot:["magma_cream"],sell:0,desc:"Left over from a Magma Cube. Drops Magma Cream.",l1:"Left over from a",l2:"Magma Cube. Drops",l3:"Magma Cream.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_magma_cube"}
function pnp:api/add_card {id:"magma_cube_small",category:"c7"}
data modify storage pnp:cards defs.ghast set value {id:"ghast",name:"Ghast",kind:"enemy",hp:8,atk:3,traits:{ranged:1b,fly:1b,fire:1b},loot:["ghast_tear","gunpowder"],sell:0,desc:"Floats out of reach. Only ranged attackers can hurt it.",l1:"Floats out of reach.",l2:"Only ranged attackers",l3:"can hurt it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_ghast"}
function pnp:api/add_card {id:"ghast",category:"c7"}
data modify storage pnp:cards defs.enderman set value {id:"enderman",name:"Enderman",kind:"enemy",hp:10,atk:3,traits:{fast:1b},loot:["ender_pearl"],sell:0,desc:"Fast and hard-hitting. Drops Ender Pearls.",l1:"Fast and hard-",l2:"hitting. Drops",l3:"Ender Pearls.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_enderman"}
function pnp:api/add_card {id:"enderman",category:"c7"}
data modify storage pnp:cards defs.rotten_flesh set value {id:"rotten_flesh",name:"Rotten Flesh",kind:"food",sell:0,desc:"Food of last resort. Worth 1 food and eaten last.",l1:"Food of last resort.",l2:"Worth 1 food and",l3:"eaten last.",atlas:"minecraft:items",sprite:"item/rotten_flesh",food:1,meal:0,eat_order:99}
function pnp:api/add_card {id:"rotten_flesh",category:"c2"}
data modify storage pnp:cards defs.ghast_tear set value {id:"ghast_tear",name:"Ghast Tear",kind:"res",sell:3,desc:"Brewed into Regeneration potions.",l1:"Brewed into",l2:"Regeneration potions.",atlas:"minecraft:items",sprite:"item/ghast_tear"}
function pnp:api/add_card {id:"ghast_tear",category:"c1"}
function pnp:chapter2/pool_add {p:"nether_wastes",c:"zombified_piglin",w:6}
function pnp:chapter2/pool_add {p:"crimson_forest",c:"hoglin",w:6}
function pnp:chapter2/pool_add {p:"warped_forest",c:"enderman",w:4}
function pnp:chapter2/pool_add {p:"soul_sand_valley",c:"ghast",w:5}
function pnp:chapter2/pool_add {p:"soul_sand_valley",c:"skeleton",w:4}
function pnp:chapter2/pool_add {p:"basalt_deltas",c:"magma_cube",w:6}
data modify storage pnp:cards defs.piglin set value {id:"piglin",name:"Piglin",kind:"enemy",sell:0,desc:"Attacks villagers without gold. Drop Gold Ingots on it to barter, or 3 at once to win it over.",l1:"Attacks villagers",l2:"without gold. Drop",l3:"gold on it to barter.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_piglin",hp:6,atk:2,loot:["gold_nugget","gold_nugget"]}
function pnp:api/add_card {id:"piglin",category:"c7"}
data modify storage pnp:cards defs.piglin_ally set value {id:"piglin_ally",name:"Allied Piglin",kind:"unit",sell:0,desc:"Won over with gold. Fights for you but can't work. Turns into a Zombified Piglin in the overworld.",l1:"Fights for you but",l2:"can't work. Zombifies",l3:"in the overworld.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_piglin",hp:8,atk:3,kn:"Defender"}
function pnp:api/add_card {id:"piglin_ally",category:"c5"}
data modify storage pnp:cards defs.zombified_piglin_ally set value {id:"zombified_piglin_ally",name:"Zombified Piglin Ally",kind:"unit",sell:0,desc:"A Piglin that turned in the overworld. Weaker, and won't barter.",l1:"A Piglin that turned",l2:"in the overworld.",l3:"Weaker than before.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_zombified_piglin",hp:6,atk:2,kn:"Defender"}
function pnp:api/add_card {id:"zombified_piglin_ally",category:"c5"}
data modify storage pnp:cards defs.golden_helmet set value {id:"golden_helmet",name:"Golden Helmet",kind:"armor",sell:3,desc:"Piglins won't attack the villager wearing it.",l1:"Piglins won't attack",l2:"the villager wearing",l3:"it.",atlas:"minecraft:items",sprite:"item/golden_helmet"}
function pnp:api/add_card {id:"golden_helmet",category:"c6"}
data modify storage pnp:cards defs.shop_wastes set value {id:"shop_wastes",name:"Wastes Pack",kind:"shop",sell:0,desc:"Drop Gold Ingots here to buy it. 3 Nether basics.",l1:"Drop Gold Ingots here",l2:"to buy it. 3 Nether",l3:"basics.",atlas:"minecraft:items",sprite:"item/red_bundle",price:3,pack:"wastes_pack"}
function pnp:api/add_card {id:"shop_wastes",category:"c9"}
data modify storage pnp:cards defs.shop_bastion set value {id:"shop_bastion",name:"Bastion Pack",kind:"shop",sell:0,desc:"Drop Gold Ingots here to buy it. 3 cards of Bastion loot.",l1:"Drop Gold Ingots here",l2:"to buy it. 3 cards of",l3:"Bastion loot.",atlas:"minecraft:items",sprite:"item/black_bundle",price:6,pack:"bastion_pack"}
function pnp:api/add_card {id:"shop_bastion",category:"c9"}
data modify storage pnp:cards defs.wastes_pack set value {id:"wastes_pack",name:"Wastes Pack",kind:"pack",sell:0,desc:"Right-click to open. 3 Nether basics.",l1:"Right-click to open.",l2:"3 Nether basics.",atlas:"minecraft:items",sprite:"item/red_bundle",pool:"pack_wastes",count:3}
function pnp:api/add_card {id:"wastes_pack",category:"c9"}
data modify storage pnp:cards defs.bastion_pack set value {id:"bastion_pack",name:"Bastion Pack",kind:"pack",sell:0,desc:"Right-click to open. 3 cards of Bastion loot.",l1:"Right-click to open.",l2:"3 cards of Bastion",l3:"loot.",atlas:"minecraft:items",sprite:"item/black_bundle",pool:"pack_bastion",count:3}
function pnp:api/add_card {id:"bastion_pack",category:"c9"}
data modify storage pnp:cards slot.golden_helmet set value "a"
data modify storage pnp:cards gear.golden_helmet set value {hp:1}
data modify storage pnp:cards recipes append value {r:178,in:{villager:1,crafting_table:1,gold_ingot:5},n:7,time:60,use:["gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot"],out:["golden_helmet"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"gold_ingot",n:5}]}
data modify storage pnp:cards free.r178 set value 1b
data modify storage pnp:cards pools.barter set value {t:300,e:[{c:"obsidian",w:40},{c:"crying_obsidian",w:40},{c:"leather",w:40},{c:"soul_sand",w:40},{c:"gravel",w:40},{c:"blackstone",w:40},{c:"nether_quartz",w:20},{c:"gold_nugget",w:15},{c:"ender_pearl",w:10},{c:"iron_ingot",w:10},{c:"magma_cream",w:5}]}
data modify storage pnp:cards pools.pack_wastes set value {t:100,e:[{c:"netherrack",w:20},{c:"gold_nugget",w:20},{c:"nether_quartz",w:15},{c:"soul_sand",w:12},{c:"glowstone_dust",w:10},{c:"crimson_fungus",w:8},{c:"warped_fungus",w:8},{c:"magma_cream",w:4},{c:"ender_pearl",w:3}]}
data modify storage pnp:cards pools.pack_bastion set value {t:100,e:[{c:"gold_nugget",w:25},{c:"blackstone",w:25},{c:"gold_ingot",w:15},{c:"leather",w:15},{c:"crying_obsidian",w:10},{c:"obsidian",w:7},{c:"golden_helmet",w:3}]}
function pnp:chapter2/pool_add {p:"crimson_forest",c:"piglin",w:4}
function pnp:chapter2/pool_add {p:"nether_wastes",c:"piglin",w:3}
data modify storage pnp:cards defs.gate_fortress set value {id:"gate_fortress",name:"Nether Fortress",kind:"gate",sell:0,desc:"An unstable gateway to a Nether Fortress. Stack villagers on it and right-click to send them through. It fades in 3 days.",l1:"An unstable gateway to",l2:"a Nether Fortress.",l3:"Stack villagers on it",l4:"and right-click to",atlas:"minecraft:blocks",sprite:"block/chiseled_nether_bricks",kn:"Unstable gateway"}
function pnp:api/add_card {id:"gate_fortress",category:"c9"}
data modify storage pnp:cards defs.blaze set value {id:"blaze",name:"Blaze",kind:"enemy",sell:0,desc:"Fires from range. Drops Blaze Rods.",l1:"Fires from range.",l2:"Drops Blaze Rods.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_blaze",hp:5,atk:2,traits:{ranged:1b,fire:1b},loot:["blaze_rod"]}
function pnp:api/add_card {id:"blaze",category:"c7"}
data modify storage pnp:cards defs.wither_skeleton set value {id:"wither_skeleton",name:"Wither Skeleton",kind:"enemy",sell:0,desc:"Hits hard. Sometimes drops its skull.",l1:"Hits hard. Sometimes",l2:"drops its skull.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_wither_skeleton",hp:8,atk:3,loot:["coal","bone"]}
function pnp:api/add_card {id:"wither_skeleton",category:"c7"}
data modify storage pnp:cards defs.wildfire set value {id:"wildfire",name:"Wildfire",kind:"enemy",sell:0,desc:"Floats behind four shields. Ranged attacks break them; melee only cracks them now and then. Fires volleys and calls in Blazes.",l1:"Shields block most",l2:"melee. Ranged hits",l3:"break them.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_wildfire",hp:40,atk:2,traits:{boss:1b,ranged:1b,fire:1b},loot:["wildfire_crown","wildfire_shield","blaze_rod","blaze_rod"]}
function pnp:api/add_card {id:"wildfire",category:"c7"}
data modify storage pnp:cards defs.blaze_rod set value {id:"blaze_rod",name:"Blaze Rod",kind:"res",sell:3,desc:"A villager turns it into 2 Blaze Powder.",l1:"A villager turns it",l2:"into 2 Blaze Powder.",atlas:"minecraft:items",sprite:"item/blaze_rod"}
function pnp:api/add_card {id:"blaze_rod",category:"c1"}
data modify storage pnp:cards defs.blaze_powder set value {id:"blaze_powder",name:"Blaze Powder",kind:"res",sell:2,desc:"Fuel for brewing and the key to Magma Cream.",l1:"Fuel for brewing and",l2:"the key to Magma",l3:"Cream.",atlas:"minecraft:items",sprite:"item/blaze_powder"}
function pnp:api/add_card {id:"blaze_powder",category:"c1"}
data modify storage pnp:cards defs.wither_skeleton_skull set value {id:"wither_skeleton_skull",name:"Wither Skeleton Skull",kind:"res",sell:6,desc:"Three on four Soul Sand summon the Wither.",l1:"Three on four Soul",l2:"Sand summon the",l3:"Wither.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_wither_skeleton"}
function pnp:api/add_card {id:"wither_skeleton_skull",category:"c1"}
data modify storage pnp:cards defs.wildfire_crown set value {id:"wildfire_crown",name:"Wildfire Crown",kind:"armor",sell:8,desc:"+3 health. Blazes ignore whoever wears it.",l1:"+3 health. Blazes",l2:"ignore whoever",l3:"wears it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_wildfire"}
function pnp:api/add_card {id:"wildfire_crown",category:"c6"}
data modify storage pnp:cards defs.wildfire_shield set value {id:"wildfire_shield",name:"Wildfire Shield",kind:"weapon",sell:6,desc:"Blocks like a Shield, with +2 health.",l1:"Blocks like a Shield,",l2:"with +2 health.",atlas:"minecraft:items",sprite:"pnp:item/art/shield"}
function pnp:api/add_card {id:"wildfire_shield",category:"c6"}
data modify storage pnp:cards slot.wildfire_crown set value "a"
data modify storage pnp:cards gear.wildfire_crown set value {hp:3}
data modify storage pnp:cards slot.wildfire_shield set value "t"
data modify storage pnp:cards gear.wildfire_shield set value {hp:2,guard:1b}
data modify storage pnp:cards recipes append value {r:179,in:{villager:1,blaze_rod:1},n:2,time:40,use:["blaze_rod"],out:["blaze_powder","blaze_powder"],il:[{c:"villager",n:1},{c:"blaze_rod",n:1}]}
data modify storage pnp:cards free.r179 set value 1b
data modify storage pnp:cards gates.fortress set value {name:"Nether Fortress",waves:[["blaze","wither_skeleton"],["wither_skeleton","blaze","magma_cube"],["wither_skeleton","wither_skeleton","blaze"],["wildfire"]]}
function pnp:chapter2/pool_add {p:"nether_wastes",c:"gate_fortress",w:1}
data modify storage pnp:cards defs.gate_bastion set value {id:"gate_bastion",name:"Bastion Remnant",kind:"gate",sell:0,desc:"An unstable gateway to a Bastion Remnant. Stack villagers on it and right-click to send them through. It fades in 3 days.",l1:"An unstable gateway to",l2:"a Bastion Remnant.",l3:"Stack villagers on it",l4:"and right-click to",atlas:"minecraft:blocks",sprite:"block/gilded_blackstone",kn:"Unstable gateway"}
function pnp:api/add_card {id:"gate_bastion",category:"c9"}
data modify storage pnp:cards defs.piglin_brute set value {id:"piglin_brute",name:"Piglin Brute",kind:"enemy",sell:0,desc:"Guards the Bastion. Hits hard and gold won't calm it.",l1:"Guards the Bastion.",l2:"Hits hard. Gold won't",l3:"calm it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_piglin_brute",hp:12,atk:4,loot:["gold_ingot"]}
function pnp:api/add_card {id:"piglin_brute",category:"c7"}
data modify storage pnp:cards defs.mutated_hoglin set value {id:"mutated_hoglin",name:"Mutated Hoglin",kind:"enemy",sell:0,desc:"Charges through the whole fight and knocks fighters back. Enrages when hurt.",l1:"Charges through the",l2:"fight. Enrages when",l3:"hurt.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_mutated_hoglin",hp:30,atk:3,traits:{boss:1b,knock:1b},loot:["netherite_upgrade_template","porkchop","porkchop","leather"]}
function pnp:api/add_card {id:"mutated_hoglin",category:"c7"}
data modify storage pnp:cards defs.netherite_upgrade_template set value {id:"netherite_upgrade_template",name:"Netherite Upgrade Template",kind:"res",sell:10,desc:"Needed for every netherite upgrade at a Smithing Table.",l1:"Needed for every",l2:"netherite upgrade at",l3:"a Smithing Table.",atlas:"minecraft:items",sprite:"item/netherite_upgrade_smithing_template"}
function pnp:api/add_card {id:"netherite_upgrade_template",category:"c1"}
data modify storage pnp:cards gates.bastion set value {name:"Bastion Remnant",waves:[["piglin","piglin_brute"],["hoglin","piglin","piglin_brute"],["piglin_brute","piglin_brute","hoglin"],["mutated_hoglin","piglin"]]}
function pnp:chapter2/pool_add {p:"crimson_forest",c:"gate_bastion",w:1}
data modify storage pnp:cards recipes append value {r:180,in:{villager:1,smithing_table:1,netherite_upgrade_template:1,diamond:7,netherrack:1},n:11,time:100,use:["netherite_upgrade_template","diamond","diamond","diamond","diamond","diamond","diamond","diamond","netherrack"],out:["netherite_upgrade_template","netherite_upgrade_template"],il:[{c:"villager",n:1},{c:"smithing_table",n:1},{c:"netherite_upgrade_template",n:1},{c:"diamond",n:7},{c:"netherrack",n:1}]}
data modify storage pnp:cards defs.diamond_pickaxe set value {id:"diamond_pickaxe",name:"Diamond Pickaxe",kind:"tool",sell:6,desc:"Stack it with a villager on the Nether Wastes to mine Ancient Debris. Makes a villager a miner.",l1:"Mines Ancient Debris",l2:"on the Nether Wastes.",l3:"Makes a miner.",atlas:"minecraft:items",sprite:"item/diamond_pickaxe"}
function pnp:api/add_card {id:"diamond_pickaxe",category:"c6"}
data modify storage pnp:cards defs.ancient_debris set value {id:"ancient_debris",name:"Ancient Debris",kind:"res",sell:6,desc:"Smelt it in a Furnace for Netherite Scrap.",l1:"Smelt it in a",l2:"Furnace for",l3:"Netherite Scrap.",atlas:"minecraft:blocks",sprite:"block/ancient_debris_side"}
function pnp:api/add_card {id:"ancient_debris",category:"c1"}
data modify storage pnp:cards defs.netherite_scrap set value {id:"netherite_scrap",name:"Netherite Scrap",kind:"res",sell:6,desc:"Four Scrap and four Gold Ingots make a Netherite Ingot.",l1:"Four Scrap and four",l2:"Gold Ingots make a",l3:"Netherite Ingot.",atlas:"minecraft:items",sprite:"item/netherite_scrap"}
function pnp:api/add_card {id:"netherite_scrap",category:"c1"}
data modify storage pnp:cards defs.netherite_ingot set value {id:"netherite_ingot",name:"Netherite Ingot",kind:"res",sell:20,desc:"Upgrades diamond gear at a Smithing Table, with a Template.",l1:"Upgrades diamond",l2:"gear at a Smithing",l3:"Table.",atlas:"minecraft:items",sprite:"item/netherite_ingot"}
function pnp:api/add_card {id:"netherite_ingot",category:"c1"}
data modify storage pnp:cards defs.smithing_table set value {id:"smithing_table",name:"Smithing Table",kind:"struct",sell:2,desc:"A villager upgrades diamond gear here with a Netherite Ingot and a Template.",l1:"Upgrades diamond gear",l2:"with a Netherite Ingot",l3:"and a Template.",atlas:"minecraft:blocks",sprite:"block/smithing_table_front"}
function pnp:api/add_card {id:"smithing_table",category:"c4"}
data modify storage pnp:cards defs.netherite_sword set value {id:"netherite_sword",name:"Netherite Sword",kind:"weapon",sell:25,desc:"The strongest weapon in the game.",l1:"The strongest weapon",l2:"in the game.",atlas:"minecraft:items",sprite:"item/netherite_sword"}
function pnp:api/add_card {id:"netherite_sword",category:"c6"}
data modify storage pnp:cards defs.netherite_chestplate set value {id:"netherite_chestplate",name:"Netherite Chestplate",kind:"armor",sell:25,desc:"The toughest armor in the game.",l1:"The toughest armor",l2:"in the game.",atlas:"minecraft:items",sprite:"item/netherite_chestplate"}
function pnp:api/add_card {id:"netherite_chestplate",category:"c6"}
data modify storage pnp:cards defs.netherite_pickaxe set value {id:"netherite_pickaxe",name:"Netherite Pickaxe",kind:"tool",sell:25,desc:"Finds Ancient Debris twice as often on the Nether Wastes.",l1:"Finds Ancient Debris",l2:"twice as often on the",l3:"Nether Wastes.",atlas:"minecraft:items",sprite:"item/netherite_pickaxe"}
function pnp:api/add_card {id:"netherite_pickaxe",category:"c6"}
data modify storage pnp:cards slot.diamond_pickaxe set value "t"
data modify storage pnp:cards gear.diamond_pickaxe set value {role:"miner",atk:1}
data modify storage pnp:cards slot.netherite_pickaxe set value "t"
data modify storage pnp:cards gear.netherite_pickaxe set value {role:"miner",atk:2}
data modify storage pnp:cards slot.netherite_sword set value "t"
data modify storage pnp:cards gear.netherite_sword set value {atk:7,role:"swordsman"}
data modify storage pnp:cards slot.netherite_chestplate set value "a"
data modify storage pnp:cards gear.netherite_chestplate set value {hp:9}
data modify storage pnp:cards recipes append value {r:181,in:{villager:1,crafting_table:1,diamond:3,stick:2},n:7,time:80,use:["diamond","diamond","diamond","stick","stick"],out:["diamond_pickaxe"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"diamond",n:3},{c:"stick",n:2}]}
data modify storage pnp:cards recipes append value {r:182,in:{villager:1,nether_wastes:1,diamond_pickaxe:1},n:3,time:140,use:[],out:["@nether_deep"],il:[{c:"villager",n:1},{c:"nether_wastes",n:1},{c:"diamond_pickaxe",n:1}]}
data modify storage pnp:cards recipes append value {r:183,in:{villager:1,nether_wastes:1,netherite_pickaxe:1},n:3,time:120,use:[],out:["@nether_deep_rich"],il:[{c:"villager",n:1},{c:"nether_wastes",n:1},{c:"netherite_pickaxe",n:1}]}
data modify storage pnp:cards recipes append value {r:184,in:{furnace:1,ancient_debris:1,coal:1},n:3,time:120,use:["ancient_debris","coal"],out:["netherite_scrap"],il:[{c:"furnace",n:1},{c:"ancient_debris",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards recipes append value {r:185,in:{villager:1,crafting_table:1,netherite_scrap:4,gold_ingot:4},n:10,time:100,use:["netherite_scrap","netherite_scrap","netherite_scrap","netherite_scrap","gold_ingot","gold_ingot","gold_ingot","gold_ingot"],out:["netherite_ingot"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"netherite_scrap",n:4},{c:"gold_ingot",n:4}]}
data modify storage pnp:cards recipes append value {r:186,in:{villager:1,crafting_table:1,iron_ingot:2,planks:4},n:8,time:80,use:["iron_ingot","iron_ingot","planks","planks","planks","planks"],out:["smithing_table"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"iron_ingot",n:2},{c:"planks",n:4}]}
data modify storage pnp:cards recipes append value {r:187,in:{villager:1,smithing_table:1,diamond_sword:1,netherite_ingot:1,netherite_upgrade_template:1},n:5,time:120,use:["diamond_sword","netherite_ingot","netherite_upgrade_template"],out:["netherite_sword"],il:[{c:"villager",n:1},{c:"smithing_table",n:1},{c:"diamond_sword",n:1},{c:"netherite_ingot",n:1},{c:"netherite_upgrade_template",n:1}]}
data modify storage pnp:cards recipes append value {r:188,in:{villager:1,smithing_table:1,diamond_chestplate:1,netherite_ingot:1,netherite_upgrade_template:1},n:5,time:120,use:["diamond_chestplate","netherite_ingot","netherite_upgrade_template"],out:["netherite_chestplate"],il:[{c:"villager",n:1},{c:"smithing_table",n:1},{c:"diamond_chestplate",n:1},{c:"netherite_ingot",n:1},{c:"netherite_upgrade_template",n:1}]}
data modify storage pnp:cards recipes append value {r:189,in:{villager:1,smithing_table:1,diamond_pickaxe:1,netherite_ingot:1,netherite_upgrade_template:1},n:5,time:120,use:["diamond_pickaxe","netherite_ingot","netherite_upgrade_template"],out:["netherite_pickaxe"],il:[{c:"villager",n:1},{c:"smithing_table",n:1},{c:"diamond_pickaxe",n:1},{c:"netherite_ingot",n:1},{c:"netherite_upgrade_template",n:1}]}
data modify storage pnp:cards pools.nether_deep set value {t:100,e:[{c:"netherrack",w:30},{c:"nether_quartz",w:25},{c:"gold_nugget",w:25},{c:"glowstone_dust",w:10},{c:"ancient_debris",w:6},{c:"zombified_piglin",w:4}]}
data modify storage pnp:cards pools.nether_deep_rich set value {t:100,e:[{c:"netherrack",w:26},{c:"nether_quartz",w:25},{c:"gold_nugget",w:23},{c:"glowstone_dust",w:10},{c:"ancient_debris",w:12},{c:"zombified_piglin",w:4}]}
data modify storage pnp:cards smelt.ancient_debris set value "netherite_scrap"
data modify storage pnp:cards free.r181 set value 1b
data modify storage pnp:cards free.r182 set value 1b
data modify storage pnp:cards free.r183 set value 1b
data modify storage pnp:cards unlock.ancient_debris set value [180,184,185,186,187,188,189]
data modify storage pnp:cards defs.potion_fire_res set value {id:"potion_fire_res",name:"Potion of Fire Resistance",kind:"res",sell:8,desc:"Drop it on a villager and fire can't hurt them for 3 days. Or send it home with a Bundle for a real potion.",l1:"Drop on a villager:",l2:"no fire damage for",l3:"3 days. Or send it",l4:"home in a Bundle.",atlas:"minecraft:items",sprite:"pnp:item/art/potion_fire_res",iid:"minecraft:potion",give:'minecraft:potion[minecraft:potion_contents={potion:"minecraft:fire_resistance"}]',gn:1}
function pnp:api/add_card {id:"potion_fire_res",category:"c1"}
data modify storage pnp:cards defs.potion_strength_2 set value {id:"potion_strength_2",name:"Potion of Strength II",kind:"res",sell:12,desc:"Drop it on a villager for +4 attack until supper. Or send it home with a Bundle for a real potion.",l1:"Drop on a villager:",l2:"+4 attack until",l3:"supper.",atlas:"minecraft:items",sprite:"pnp:item/art/potion_strength_2",iid:"minecraft:potion",give:'minecraft:potion[minecraft:potion_contents={potion:"minecraft:strong_strength",l4:"Or home in a Bundle."}]',gn:1}
function pnp:api/add_card {id:"potion_strength_2",category:"c1"}
data modify storage pnp:cards recipes append value {r:190,in:{villager:1,brewing_stand:1,nether_wart:1,magma_cream:1},n:4,time:300,use:["nether_wart","magma_cream"],out:["potion_fire_res"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"magma_cream",n:1}]}
data modify storage pnp:cards recipes append value {r:191,in:{villager:1,brewing_stand:1,potion_strength:1,glowstone_dust:1},n:4,time:300,use:["potion_strength","glowstone_dust"],out:["potion_strength_2"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"potion_strength",n:1},{c:"glowstone_dust",n:1}]}
data modify storage pnp:cards recipes append value {r:192,in:{villager:1,brewing_stand:1,nether_wart:1,ghast_tear:1},n:4,time:300,use:["nether_wart","ghast_tear"],out:["potion_regen"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"ghast_tear",n:1}]}
data modify storage pnp:cards recipes append value {r:193,in:{villager:1,brewing_stand:1,golden_apple:1,blaze_powder:1},n:4,time:300,use:["golden_apple","blaze_powder"],out:["potion_healing","potion_healing"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"golden_apple",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:194,in:{villager:1,brewing_stand:1,sweet_berries:4,blaze_powder:1},n:7,time:300,use:["sweet_berries","sweet_berries","sweet_berries","sweet_berries","blaze_powder"],out:["potion_regen","potion_regen"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"sweet_berries",n:4},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:195,in:{villager:1,brewing_stand:1,wheat:3,blaze_powder:1},n:6,time:300,use:["wheat","wheat","wheat","blaze_powder"],out:["potion_swift","potion_swift"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"wheat",n:3},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:196,in:{villager:1,brewing_stand:1,bone:2,blaze_powder:1},n:5,time:300,use:["bone","bone","blaze_powder"],out:["potion_strength","potion_strength"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"bone",n:2},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:197,in:{villager:1,brewing_stand:1,cod:2,blaze_powder:1},n:5,time:300,use:["cod","cod","blaze_powder"],out:["potion_water","potion_water"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"cod",n:2},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:198,in:{villager:1,brewing_stand:1,pumpkin:1,blaze_powder:1},n:4,time:300,use:["pumpkin","blaze_powder"],out:["potion_night","potion_night"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"pumpkin",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:199,in:{villager:1,brewing_stand:1,nether_wart:1,magma_cream:1,blaze_powder:1},n:5,time:300,use:["nether_wart","magma_cream","blaze_powder"],out:["potion_fire_res","potion_fire_res"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"magma_cream",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:200,in:{villager:1,brewing_stand:1,potion_strength:1,glowstone_dust:1,blaze_powder:1},n:5,time:300,use:["potion_strength","glowstone_dust","blaze_powder"],out:["potion_strength_2","potion_strength_2"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"potion_strength",n:1},{c:"glowstone_dust",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:201,in:{villager:1,brewing_stand:1,nether_wart:1,ghast_tear:1,blaze_powder:1},n:5,time:300,use:["nether_wart","ghast_tear","blaze_powder"],out:["potion_regen","potion_regen"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"ghast_tear",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards unlock.blaze_rod set value [190,191,192,193,194,195,196,197,198,199,200,201]
data modify storage pnp:cards defs.wither set value {id:"wither",name:"Wither",kind:"enemy",sell:0,desc:"Summoned from 3 Wither Skeleton Skulls on 4 Soul Sand. Switches between melee and flying at random; while it flies, only ranged attacks can hurt it.",l1:"Lands and flies at",l2:"random. In the air,",l3:"only ranged attacks",l4:"can hurt it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_wither",hp:60,atk:4,traits:{boss:1b},loot:["nether_star"]}
function pnp:api/add_card {id:"wither",category:"c7"}
data modify storage pnp:cards recipes append value {r:202,in:{soul_sand:4,wither_skeleton_skull:3},n:7,time:60,use:["soul_sand","soul_sand","soul_sand","soul_sand","wither_skeleton_skull","wither_skeleton_skull","wither_skeleton_skull"],out:["wither"],il:[{c:"soul_sand",n:4},{c:"wither_skeleton_skull",n:3}]}
data modify storage pnp:cards unlock.wither_skeleton_skull set value [202]
data modify storage pnp:cards defs.beacon set value {id:"beacon",name:"Beacon",kind:"struct",sell:0,desc:"Feed it Iron, Gold, Diamonds or Netherite and right-click it to choose a buff for its table. Better minerals make stronger buffs.",l1:"Feed it minerals and",l2:"right-click to pick a",l3:"buff for its table.",atlas:"minecraft:blocks",sprite:"block/beacon"}
function pnp:api/add_card {id:"beacon",category:"c4"}
data modify storage pnp:cards machines.beacon set value {in:1,out:1,storage:16,accepts:["iron_ingot","gold_ingot","diamond","netherite_ingot"],on_tick:"pnp:beacon/tick",on_use:"pnp:beacon/use"}
data modify storage pnp:cards recipes append value {r:203,in:{villager:1,nether_star:1,obsidian:3,diamond:1},n:6,time:120,use:["nether_star","obsidian","obsidian","obsidian","diamond"],out:["beacon"],il:[{c:"villager",n:1},{c:"nether_star",n:1},{c:"obsidian",n:3},{c:"diamond",n:1}]}
data modify storage pnp:cards unlock.nether_star set value [203]
data modify storage pnp:cards c2ev set value {nether_portal:"c2_portal",potion_fire_res:"c2_fireres",gate_bastion:"c2_bgate",ancient_debris:"c2_debris",netherite_ingot:"c2_ingot"}
