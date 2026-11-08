data modify storage pnp:cards defs.strider set value {id:"strider",name:"Strider",kind:"animal",kn:"Animal",sell:8,desc:"A Nether animal that walks on lava. Put a Saddle on it to ride it.",l1:"Walks on lava. Put a",l2:"Saddle on it to ride",l3:"it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_strider"}
function pnp:api/add_card {id:"strider",category:"c3"}
data modify storage pnp:cards defs.saddled_strider set value {id:"saddled_strider",name:"Saddled Strider",kind:"animal",kn:"Animal",sell:14,desc:"Ready to ride. With a villager and a Warped Fungus on a Stick it finds the Lava Sea, then carries villagers out to work it.",l1:"Ready to ride. Finds",l2:"the Lava Sea and",l3:"carries villagers",l4:"out to work it.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_strider"}
function pnp:api/add_card {id:"saddled_strider",category:"c3"}
data modify storage pnp:cards defs.saddle set value {id:"saddle",name:"Saddle",kind:"res",kn:"Resource",sell:6,desc:"Put it on a Strider to ride it.",l1:"Put it on a Strider",l2:"to ride it.",atlas:"minecraft:items",sprite:"item/saddle"}
function pnp:api/add_card {id:"saddle",category:"c6"}
data modify storage pnp:cards defs.warped_fungus_on_a_stick set value {id:"warped_fungus_on_a_stick",name:"Warped Fungus on a Stick",kind:"tool",kn:"Tool",sell:4,desc:"Steers a Saddled Strider. Bring one along to find the Lava Sea.",l1:"Steers a Saddled",l2:"Strider. Bring one to",l3:"find the Lava Sea.",atlas:"minecraft:items",sprite:"item/warped_fungus_on_a_stick"}
function pnp:api/add_card {id:"warped_fungus_on_a_stick",category:"c6"}
data modify storage pnp:cards defs.lava_sea set value {id:"lava_sea",name:"Lava Sea",kind:"node",kn:"Node",sell:0,desc:"Put a villager and a Saddled Strider on it to search the lava for gold, Ancient Debris and treasure.",l1:"Villager + Saddled",l2:"Strider: search the",l3:"lava for gold, debris",l4:"and treasure.",atlas:"minecraft:blocks",sprite:"block/lava_still"}
function pnp:api/add_card {id:"lava_sea",category:"c3"}
data modify storage pnp:cards defs.zoglin set value {id:"zoglin",name:"Zoglin",kind:"enemy",kn:"Enemy",sell:0,desc:"A Hoglin that crossed into the overworld. It attacks everything in reach.",l1:"A Hoglin that crossed",l2:"into the overworld.",l3:"It attacks anything.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_zoglin",hp:12,atk:3,traits:{knock:1b},loot:["rotten_flesh","rotten_flesh"]}
function pnp:api/add_card {id:"zoglin",category:"c7"}
data modify storage pnp:cards defs.bone_meal set value {id:"bone_meal",name:"Bone Meal",kind:"res",kn:"Resource",sell:2,desc:"Drop it on a working Farm, tree, bush or Nether forest to finish the job right away.",l1:"Drop it on a working",l2:"Farm, tree or bush to",l3:"finish the job right",l4:"away.",atlas:"minecraft:items",sprite:"item/bone_meal"}
function pnp:api/add_card {id:"bone_meal",category:"c1"}
data modify storage pnp:cards defs.composter set value {id:"composter",name:"Composter",kind:"struct",kn:"Structure",sell:4,desc:"A machine. Feed it crops, fungi or Ash, and every 4 make a Bone Meal.",l1:"Feed it crops, fungi",l2:"or Ash. Every 4 make",l3:"a Bone Meal.",atlas:"minecraft:blocks",sprite:"block/composter_side"}
function pnp:api/add_card {id:"composter",category:"c4"}
data modify storage pnp:cards defs.smoker set value {id:"smoker",name:"Smoker",kind:"struct",kn:"Structure",sell:6,desc:"Cooks food twice as fast as a Furnace.",l1:"Cooks food twice as",l2:"fast as a Furnace.",atlas:"minecraft:blocks",sprite:"block/smoker_front"}
function pnp:api/add_card {id:"smoker",category:"c4"}
data modify storage pnp:cards defs.blast_furnace set value {id:"blast_furnace",name:"Blast Furnace",kind:"struct",kn:"Structure",sell:8,desc:"Smelts ores twice as fast as a Furnace.",l1:"Smelts ores twice as",l2:"fast as a Furnace.",atlas:"minecraft:blocks",sprite:"block/blast_furnace_front"}
function pnp:api/add_card {id:"blast_furnace",category:"c4"}
data modify storage pnp:cards defs.cobblestone_generator set value {id:"cobblestone_generator",name:"Cobblestone Generator",kind:"struct",kn:"Structure",sell:6,desc:"A machine. Makes Cobblestone every 10 seconds.",l1:"Makes Cobblestone",l2:"every 10 seconds.",atlas:"minecraft:blocks",sprite:"block/cobblestone"}
function pnp:api/add_card {id:"cobblestone_generator",category:"c4"}
data modify storage pnp:cards recipes append value {r:226,in:{villager:1,fishing_rod:1,warped_fungus:1},n:3,time:40,use:["fishing_rod","warped_fungus"],out:["warped_fungus_on_a_stick"],il:[{c:"villager",n:1},{c:"fishing_rod",n:1},{c:"warped_fungus",n:1}]}
data modify storage pnp:cards unlock.warped_fungus append value 226
data modify storage pnp:cards recipes append value {r:227,in:{strider:1,saddle:1},n:2,time:20,use:["strider","saddle"],out:["saddled_strider"],il:[{c:"strider",n:1},{c:"saddle",n:1}]}
data modify storage pnp:cards unlock.strider append value 227
data modify storage pnp:cards unlock.saddle append value 227
data modify storage pnp:cards recipes append value {r:228,in:{villager:1,saddled_strider:1,warped_fungus_on_a_stick:1},n:3,time:300,use:[],out:["lava_sea"],il:[{c:"villager",n:1},{c:"saddled_strider",n:1},{c:"warped_fungus_on_a_stick",n:1}]}
data modify storage pnp:cards unlock.saddled_strider append value 228
data modify storage pnp:cards recipes append value {r:229,in:{villager:1,saddled_strider:1,lava_sea:1},n:3,time:140,use:[],out:["@lava_sea"],il:[{c:"villager",n:1},{c:"saddled_strider",n:1},{c:"lava_sea",n:1}]}
data modify storage pnp:cards unlock.lava_sea append value 229
data modify storage pnp:cards recipes append value {r:230,in:{villager:1,planks:3},n:4,time:60,use:["planks","planks","planks"],out:["composter"],il:[{c:"villager",n:1},{c:"planks",n:3}]}
data modify storage pnp:cards unlock.ash append value 230
data modify storage pnp:cards unlock.farm append value 230
data modify storage pnp:cards recipes append value {r:231,in:{villager:1,furnace:1,oak_log:4},n:6,time:100,use:["oak_log","oak_log","oak_log","oak_log"],out:["smoker"],il:[{c:"villager",n:1},{c:"furnace",n:1},{c:"oak_log",n:4}]}
data modify storage pnp:cards unlock.furnace append value 231
data modify storage pnp:cards recipes append value {r:232,in:{villager:1,furnace:1,iron_ingot:5},n:7,time:120,use:["iron_ingot","iron_ingot","iron_ingot","iron_ingot","iron_ingot"],out:["blast_furnace"],il:[{c:"villager",n:1},{c:"furnace",n:1},{c:"iron_ingot",n:5}]}
data modify storage pnp:cards unlock.iron_ingot append value 232
data modify storage pnp:cards recipes append value {r:233,in:{villager:1,lava_bucket:1,water_bucket:1,cobblestone:1},n:4,time:120,use:["cobblestone"],out:["cobblestone_generator"],il:[{c:"villager",n:1},{c:"lava_bucket",n:1},{c:"water_bucket",n:1},{c:"cobblestone",n:1}]}
data modify storage pnp:cards unlock.lava_bucket append value 233
data modify storage pnp:cards recipes append value {r:234,in:{smoker:1,coal:1,porkchop:1},n:3,time:40,use:["porkchop","coal"],out:["cooked_porkchop"],il:[{c:"smoker",n:1},{c:"coal",n:1},{c:"porkchop",n:1}]}
data modify storage pnp:cards unlock.smoker append value 234
data modify storage pnp:cards recipes append value {r:235,in:{smoker:1,cod:1,coal:1},n:3,time:50,use:["cod","coal"],out:["cooked_cod"],il:[{c:"smoker",n:1},{c:"cod",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards unlock.smoker append value 235
data modify storage pnp:cards recipes append value {r:236,in:{smoker:1,potato:1,coal:1},n:3,time:40,use:["potato","coal"],out:["baked_potato"],il:[{c:"smoker",n:1},{c:"potato",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards unlock.smoker append value 236
data modify storage pnp:cards recipes append value {r:237,in:{smoker:1,coal:1,beef:1},n:3,time:40,use:["beef","coal"],out:["steak"],il:[{c:"smoker",n:1},{c:"coal",n:1},{c:"beef",n:1}]}
data modify storage pnp:cards unlock.smoker append value 237
data modify storage pnp:cards recipes append value {r:238,in:{blast_furnace:1,coal:1,iron_ore:1},n:3,time:50,use:["iron_ore","coal"],out:["iron_ingot"],il:[{c:"blast_furnace",n:1},{c:"coal",n:1},{c:"iron_ore",n:1}]}
data modify storage pnp:cards unlock.blast_furnace append value 238
data modify storage pnp:cards recipes append value {r:239,in:{blast_furnace:1,gold_ore:1,coal:1},n:3,time:50,use:["gold_ore","coal"],out:["gold_ingot"],il:[{c:"blast_furnace",n:1},{c:"gold_ore",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards unlock.blast_furnace append value 239
data modify storage pnp:cards recipes append value {r:240,in:{copper_ore:1,blast_furnace:1,coal:1},n:3,time:50,use:["copper_ore","coal"],out:["copper_ingot"],il:[{c:"copper_ore",n:1},{c:"blast_furnace",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards unlock.blast_furnace append value 240
data modify storage pnp:cards recipes append value {r:241,in:{ancient_debris:1,blast_furnace:1,coal:1},n:3,time:60,use:["ancient_debris","coal"],out:["netherite_scrap"],il:[{c:"ancient_debris",n:1},{c:"blast_furnace",n:1},{c:"coal",n:1}]}
data modify storage pnp:cards unlock.blast_furnace append value 241
data modify storage pnp:cards pools.lava_sea set value {t:90,e:[{c:"magma_cream",w:20},{c:"gold_ingot",w:14},{c:"basalt",w:14},{c:"ghast_tear",w:8},{c:"ancient_debris",w:6},{c:"netherite_scrap",w:3},{c:"gold_block",w:3},{c:"enchanted_book",w:4},{c:"magma_cube",w:10},{c:"ghast",w:4},{c:"strider",w:4}]}
data modify storage pnp:cards pfirst.lava_sea set value ["ancient_debris","gold_ingot","magma_cream"]
function pnp:chapter2/pool_add {p:"basalt_deltas",c:"strider",w:4}
function pnp:chapter2/pool_add {p:"nether_wastes",c:"strider",w:1}
function pnp:chapter2/pool_add {p:"pack_bastion",c:"saddle",w:4}
function pnp:chapter2/pool_add {p:"merchant",c:"saddle",w:2}
data modify storage pnp:cards machines.composter set value {in:1,out:1,storage:8,accepts:["wheat","carrot","potato","sweet_berries","apple","sugar_cane","crimson_fungus","warped_fungus","nether_wart","ash","pumpkin","melon_slice"],on_tick:"pnp:nethermach/compost_tick"}
data modify storage pnp:cards machines.cobblestone_generator set value {in:0,out:1,storage:0,accepts:[],on_tick:"pnp:nethermach/cobble_tick"}
data modify storage pnp:cards defs.ash.desc set value "What's left of burnt food. A Composter turns it into Bone Meal."
data modify storage pnp:cards defs.ash merge value {l1:"What's left of burnt",l2:"food. Compost it into",l3:"Bone Meal."}
data modify storage pnp:cards growable set value {farm:1b,oak_tree:1b,berry_bush:1b,crimson_forest:1b,warped_forest:1b}
