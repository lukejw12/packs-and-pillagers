scoreboard objectives add pnp.ntick dummy
data modify storage pnp:cards defs.paper set value {id:"paper",name:"Paper",kind:"res",kn:"Resource",sell:2,desc:"Made from Sugar Cane at a Crafting Table. Libraries study with it.",l1:"Made from Sugar Cane.",l2:"Libraries study with",l3:"it.",atlas:"minecraft:items",sprite:"item/paper"}
function pnp:api/add_card {id:"paper",category:"c1"}
data modify storage pnp:cards defs.barter_station set value {id:"barter_station",name:"Barter Station",kind:"struct",kn:"Structure",sell:4,desc:"A machine. Pipe Gold Ingots in and barter loot comes out.",l1:"Pipe Gold Ingots in",l2:"and barter loot",l3:"comes out.",atlas:"minecraft:blocks",sprite:"block/gilded_blackstone"}
function pnp:api/add_card {id:"barter_station",category:"c4"}
data modify storage pnp:cards defs.wart_farm set value {id:"wart_farm",name:"Nether Wart Farm",kind:"struct",kn:"Structure",sell:4,desc:"A machine. Grows a Nether Wart every 45 seconds.",l1:"Grows a Nether Wart",l2:"every 45 seconds.",atlas:"minecraft:blocks",sprite:"block/nether_wart_block"}
function pnp:api/add_card {id:"wart_farm",category:"c4"}
data modify storage pnp:cards defs.blaze_spawner set value {id:"blaze_spawner",name:"Blaze Spawner",kind:"struct",kn:"Structure",sell:6,desc:"A machine. Makes a Blaze Rod every 60 seconds.",l1:"Makes a Blaze Rod",l2:"every 60 seconds.",atlas:"minecraft:blocks",sprite:"block/spawner"}
function pnp:api/add_card {id:"blaze_spawner",category:"c4"}
data modify storage pnp:cards defs.redstone_heart set from storage pnp:cards defs.nether_star
data modify storage pnp:cards defs.redstone_heart merge value {id:"redstone_heart",name:"Redstone Heart",atlas:"minecraft:blocks",sprite:"block/redstone_block"}
function pnp:api/add_card {id:"redstone_heart",category:"c9"}
data modify storage pnp:cards defs.idea_barter_station set from storage pnp:cards defs.idea_vault
data modify storage pnp:cards defs.idea_barter_station.id set value "idea_barter_station"
function pnp:api/add_card {id:"idea_barter_station",category:"c8"}
data modify storage pnp:cards ideas.idea_barter_station set value {name:"✦ Barter Station",sprite:"block/gilded_blackstone",atlas:"minecraft:blocks",r:[{v:215}],h1:"Villager + 4 Blackstone",h2:"+ a Gold Ingot",h3:"makes a Barter Station"}
data modify storage pnp:cards defs.idea_wart_farm set from storage pnp:cards defs.idea_vault
data modify storage pnp:cards defs.idea_wart_farm.id set value "idea_wart_farm"
function pnp:api/add_card {id:"idea_wart_farm",category:"c8"}
data modify storage pnp:cards ideas.idea_wart_farm set value {name:"✦ Nether Wart Farm",sprite:"block/nether_wart_block",atlas:"minecraft:blocks",r:[{v:216}],h1:"Villager + 4 Soul Sand",h2:"+ a Nether Wart",h3:"makes a Wart Farm"}
data modify storage pnp:cards defs.idea_blaze_spawner set from storage pnp:cards defs.idea_vault
data modify storage pnp:cards defs.idea_blaze_spawner.id set value "idea_blaze_spawner"
function pnp:api/add_card {id:"idea_blaze_spawner",category:"c8"}
data modify storage pnp:cards ideas.idea_blaze_spawner set value {name:"✦ Blaze Spawner",sprite:"block/spawner",atlas:"minecraft:blocks",r:[{v:217}],h1:"Villager + 4 Netherrack",h2:"+ 2 Blaze Rods",h3:"makes a Blaze Spawner"}
data modify storage pnp:cards recipes append value {r:213,in:{villager:1,crafting_table:1,sugar_cane:3},n:5,time:40,use:["sugar_cane","sugar_cane","sugar_cane"],out:["paper","paper","paper"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"sugar_cane",n:3}]}
data modify storage pnp:cards unlock.sugar_cane append value 213
data modify storage pnp:cards recipes append value {r:214,in:{villager:1,library:1,paper:2},n:4,time:600,use:["paper","paper"],out:["@study"],il:[{c:"villager",n:1},{c:"library",n:1},{c:"paper",n:2}]}
data modify storage pnp:cards unlock.library append value 214
data modify storage pnp:cards pools.study set value {t:1,e:[{c:"paper",w:1}]}
data modify storage pnp:cards studyp set value {study:1b}
data modify storage pnp:cards recipes append value {r:215,in:{villager:1,blackstone:4,gold_ingot:1},n:6,time:120,use:["blackstone","blackstone","blackstone","blackstone","gold_ingot"],out:["barter_station"],il:[{c:"villager",n:1},{c:"blackstone",n:4},{c:"gold_ingot",n:1}]}
data modify storage pnp:cards recipes append value {r:216,in:{villager:1,soul_sand:4,nether_wart:1},n:6,time:120,use:["soul_sand","soul_sand","soul_sand","soul_sand","nether_wart"],out:["wart_farm"],il:[{c:"villager",n:1},{c:"soul_sand",n:4},{c:"nether_wart",n:1}]}
data modify storage pnp:cards recipes append value {r:217,in:{villager:1,netherrack:4,blaze_rod:2},n:7,time:120,use:["netherrack","netherrack","netherrack","netherrack","blaze_rod","blaze_rod"],out:["blaze_spawner"],il:[{c:"villager",n:1},{c:"netherrack",n:4},{c:"blaze_rod",n:2}]}
data modify storage pnp:cards machines.barter_station set value {in:1,out:1,storage:16,accepts:["gold_ingot"],on_tick:"pnp:nethermach/barter_tick"}
data modify storage pnp:cards machines.wart_farm set value {in:0,out:1,storage:0,accepts:[],on_tick:"pnp:nethermach/wart_tick"}
data modify storage pnp:cards machines.blaze_spawner set value {in:0,out:1,storage:0,accepts:[],on_tick:"pnp:nethermach/blaze_tick"}
data modify storage pnp:cards study_order set value [{i:"idea_storage"},{i:"idea_farming"},{i:"idea_housing"},{i:"idea_hopper"},{i:"idea_dropper"},{i:"idea_compass"},{i:"idea_archery"},{i:"idea_defense"},{i:"idea_golem"},{i:"idea_shelf"},{i:"idea_vault"},{i:"idea_autocrafter"},{i:"idea_wrench"},{i:"idea_barter_station",ch:2},{i:"idea_wart_farm",ch:2},{i:"idea_blaze_spawner",ch:2}]
scoreboard objectives add pnp.regen dummy
scoreboard objectives add pnp.strb dummy
data modify storage pnp:cards drinks set value {potion_healing:"heal",potion_regen:"regen",potion_swift:"swift",potion_strength:"str",potion_strength_2:"str2",potion_night:"night",potion_water:"water"}
data modify storage pnp:cards defs.fortress_pack set from storage pnp:cards defs.bastion_pack
data modify storage pnp:cards defs.fortress_pack merge value {id:"fortress_pack",name:"Fortress Pack",pool:"pack_fortress",count:3,desc:"Right-click to open. 3 cards of Fortress loot.",l1:"Right-click to open.",l2:"3 cards of Fortress",l3:"loot.",l4:""}
function pnp:api/add_card {id:"fortress_pack",category:"c9"}
data modify storage pnp:cards defs.shop_fortress set from storage pnp:cards defs.shop_bastion
data modify storage pnp:cards defs.shop_fortress merge value {id:"shop_fortress",name:"Fortress Pack",price:6,pack:"fortress_pack",desc:"Drop Gold Ingots here to buy it. 3 cards of Fortress loot.",l1:"Drop Gold Ingots here",l2:"to buy it. 3 cards of",l3:"Fortress loot.",l4:""}
function pnp:api/add_card {id:"shop_fortress",category:"c9"}
data modify storage pnp:cards defs.merchant_pack set from storage pnp:cards defs.treasure_map
data modify storage pnp:cards defs.merchant_pack merge value {id:"merchant_pack",name:"Piglin Goods",pool:"merchant",count:1,desc:"Right-click to open. One rare Nether card.",l1:"Right-click to open.",l2:"One rare Nether card.",l3:"",l4:""}
function pnp:api/add_card {id:"merchant_pack",category:"c9"}
data modify storage pnp:cards defs.piglin_merchant set from storage pnp:cards defs.wandering_trader
data modify storage pnp:cards defs.piglin_merchant merge value {id:"piglin_merchant",name:"Piglin Merchant",price:8,pack:"merchant_pack",atlas:"minecraft:items",sprite:"pnp:item/art/mob_piglin",desc:"A visiting merchant. Drop 8 Gold Ingots on it for one rare Nether card before it leaves.",l1:"Drop 8 Gold Ingots",l2:"on it for one rare",l3:"Nether card before",l4:"it leaves."}
function pnp:api/add_card {id:"piglin_merchant",category:"c9"}
data modify storage pnp:cards pools.pack_fortress set value {t:100,e:[{c:"blaze_powder",w:20},{c:"nether_wart",w:20},{c:"soul_sand",w:15},{c:"magma_cream",w:15},{c:"gold_ingot",w:10},{c:"blaze_rod",w:8},{c:"wither_skeleton_skull",w:4},{c:"idea_blaze_spawner",w:4},{c:"idea_wart_farm",w:4}]}
data modify storage pnp:cards pools.merchant set value {t:19,e:[{c:"netherite_scrap",w:4},{c:"netherite_upgrade_template",w:2},{c:"ender_pearl",w:3},{c:"crying_obsidian",w:3},{c:"golden_helmet",w:3},{c:"potion_fire_res",w:2},{c:"blaze_rod",w:2}]}
data modify storage pnp:cards defs.fortress_pack merge value {atlas:"minecraft:items",sprite:"item/magenta_bundle"}
data modify storage pnp:cards defs.shop_fortress merge value {atlas:"minecraft:items",sprite:"item/magenta_bundle"}
data modify storage pnp:cards defs.merchant_pack merge value {atlas:"minecraft:items",sprite:"item/golden_helmet"}
data modify storage pnp:cards rname.r213 set value {translate:"pnp.card.paper.name",fallback:"Paper"}
data modify storage pnp:cards rname.r214 set value {translate:"pnp.recipe.study",fallback:"Study"}
data modify storage pnp:cards rname.r215 set value {translate:"pnp.card.barter_station.name",fallback:"Barter Station"}
data modify storage pnp:cards rname.r216 set value {translate:"pnp.card.wart_farm.name",fallback:"Nether Wart Farm"}
data modify storage pnp:cards rname.r217 set value {translate:"pnp.card.blaze_spawner.name",fallback:"Blaze Spawner"}
data modify storage pnp:cards defs.eye_of_ender set value {id:"eye_of_ender",name:"Eye of Ender",kind:"res",kn:"Resource",sell:6,desc:"An Ender Pearl filled with Blaze Powder. Builds an Ender Chest.",l1:"An Ender Pearl filled",l2:"with Blaze Powder.",l3:"Builds Ender Chests.",atlas:"minecraft:items",sprite:"item/ender_eye"}
function pnp:api/add_card {id:"eye_of_ender",category:"c1"}
data modify storage pnp:cards defs.gold_block set value {id:"gold_block",name:"Gold Block",kind:"res",kn:"Resource",sell:36,desc:"Nine Gold Ingots packed into one block. Makes the Gilded Charm.",l1:"Nine Gold Ingots in",l2:"one block. Makes the",l3:"Gilded Charm.",atlas:"minecraft:blocks",sprite:"block/gold_block"}
function pnp:api/add_card {id:"gold_block",category:"c1"}
data modify storage pnp:cards defs.ender_chest set value {id:"ender_chest",name:"Ender Chest",kind:"struct",kn:"Structure",sell:8,desc:"A machine. Every Ender Chest shares one storage, across both tables. Drop cards in, right-click to take one out.",l1:"All Ender Chests share",l2:"one storage. Drop",l3:"cards in, right-click",l4:"to take one out.",atlas:"minecraft:blocks",sprite:"block/end_portal_frame_top"}
function pnp:api/add_card {id:"ender_chest",category:"c4"}
data modify storage pnp:cards defs.respawn_anchor set value {id:"respawn_anchor",name:"Respawn Anchor",kind:"struct",kn:"Structure",sell:8,desc:"A machine. Charge it with Glowstone Dust. Each charge brings back a villager who falls on the Nether table. Explodes on the overworld table.",l1:"Charge with Glowstone.",l2:"Brings back a fallen",l3:"villager on the Nether",l4:"table.",atlas:"minecraft:blocks",sprite:"block/respawn_anchor_side4"}
function pnp:api/add_card {id:"respawn_anchor",category:"c4"}
data modify storage pnp:cards defs.basalt_generator set value {id:"basalt_generator",name:"Basalt Generator",kind:"struct",kn:"Structure",sell:6,desc:"A machine. Makes Basalt every 15 seconds.",l1:"Makes Basalt every",l2:"15 seconds.",atlas:"minecraft:blocks",sprite:"block/basalt_side"}
function pnp:api/add_card {id:"basalt_generator",category:"c4"}
data modify storage pnp:cards defs.blaze_charm set value {id:"blaze_charm",name:"Blaze Charm",kind:"trinket",kn:"Talisman",sell:8,desc:"A talisman. The villager carrying it takes no fire damage from Ghasts, Blazes or the Wildfire.",l1:"Talisman: no fire",l2:"damage from Ghasts,",l3:"Blazes or the",l4:"Wildfire.",atlas:"minecraft:items",sprite:"item/fire_charge"}
function pnp:api/add_card {id:"blaze_charm",category:"c6"}
data modify storage pnp:cards defs.gilded_charm set value {id:"gilded_charm",name:"Gilded Charm",kind:"trinket",kn:"Talisman",sell:10,desc:"A talisman. While its carrier is on the table, Piglins there don't attack anyone.",l1:"Talisman: while its",l2:"carrier is on the",l3:"table, Piglins don't",l4:"attack anyone.",atlas:"minecraft:items",sprite:"item/gold_nugget"}
function pnp:api/add_card {id:"gilded_charm",category:"c6"}
data modify storage pnp:cards defs.pigstep set value {id:"pigstep",name:"Pigstep",kind:"res",kn:"Record",sell:8,desc:"A record. While it's on your table, the music changes to Pigstep.",l1:"A record. While it is",l2:"on your table, the",l3:"music is Pigstep.",atlas:"minecraft:items",sprite:"item/music_disc_pigstep"}
function pnp:api/add_card {id:"pigstep",category:"c9"}
data modify storage pnp:cards defs.enchanted_crimson_fungus set value {id:"enchanted_crimson_fungus",name:"Enchanted Crimson Fungus",kind:"res",kn:"Resource",sell:6,desc:"Drop it on a Zombified Piglin ally to turn it back into a Piglin.",l1:"Drop it on a Zombified",l2:"Piglin ally to turn",l3:"it back into a Piglin.",atlas:"minecraft:blocks",sprite:"block/crimson_fungus"}
function pnp:api/add_card {id:"enchanted_crimson_fungus",category:"c1"}
data modify storage pnp:cards slot.blaze_charm set value "s"
data modify storage pnp:cards slot.gilded_charm set value "s"
data modify storage pnp:cards taltxt.blaze_charm set value {text:"\n",color:"dark_aqua",extra:[{translate:"pnp.villager.carrying_a_blaze_charm",fallback:"Carrying a Blaze Charm: no fire damage from Ghasts, Blazes or the Wildfire"}]}
data modify storage pnp:cards taltxt.gilded_charm set value {text:"\n",color:"dark_aqua",extra:[{translate:"pnp.villager.carrying_a_gilded_charm",fallback:"Carrying a Gilded Charm: Piglins on this table won't attack anyone"}]}
data modify storage pnp:cards recipes append value {r:218,in:{villager:1,ender_pearl:1,blaze_powder:1},n:3,time:40,use:["ender_pearl","blaze_powder"],out:["eye_of_ender"],il:[{c:"villager",n:1},{c:"ender_pearl",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards unlock.ender_pearl append value 218
data modify storage pnp:cards rname.r218 set value {translate:"pnp.card.eye_of_ender.name",fallback:"Eye of Ender"}
data modify storage pnp:cards recipes append value {r:219,in:{villager:1,eye_of_ender:1,obsidian:4},n:6,time:120,use:["eye_of_ender","obsidian","obsidian","obsidian","obsidian"],out:["ender_chest"],il:[{c:"villager",n:1},{c:"eye_of_ender",n:1},{c:"obsidian",n:4}]}
data modify storage pnp:cards unlock.ender_pearl append value 219
data modify storage pnp:cards rname.r219 set value {translate:"pnp.card.ender_chest.name",fallback:"Ender Chest"}
data modify storage pnp:cards recipes append value {r:220,in:{villager:1,crying_obsidian:3,glowstone_dust:2},n:6,time:120,use:["crying_obsidian","crying_obsidian","crying_obsidian","glowstone_dust","glowstone_dust"],out:["respawn_anchor"],il:[{c:"villager",n:1},{c:"crying_obsidian",n:3},{c:"glowstone_dust",n:2}]}
data modify storage pnp:cards unlock.crying_obsidian append value 220
data modify storage pnp:cards rname.r220 set value {translate:"pnp.card.respawn_anchor.name",fallback:"Respawn Anchor"}
data modify storage pnp:cards recipes append value {r:221,in:{villager:1,soul_soil:1,lava_bucket:1,water_bucket:1},n:4,time:120,use:["soul_soil"],out:["basalt_generator"],il:[{c:"villager",n:1},{c:"soul_soil",n:1},{c:"lava_bucket",n:1},{c:"water_bucket",n:1}]}
data modify storage pnp:cards unlock.soul_soil append value 221
data modify storage pnp:cards rname.r221 set value {translate:"pnp.card.basalt_generator.name",fallback:"Basalt Generator"}
data modify storage pnp:cards recipes append value {r:222,in:{villager:1,crafting_table:1,gold_ingot:9},n:11,time:40,use:["gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot","gold_ingot"],out:["gold_block"],il:[{c:"villager",n:1},{c:"crafting_table",n:1},{c:"gold_ingot",n:9}]}
data modify storage pnp:cards unlock.gold_ingot append value 222
data modify storage pnp:cards rname.r222 set value {translate:"pnp.card.gold_block.name",fallback:"Gold Block"}
data modify storage pnp:cards recipes append value {r:223,in:{villager:1,blaze_rod:2,gold_ingot:1},n:4,time:60,use:["blaze_rod","blaze_rod","gold_ingot"],out:["blaze_charm"],il:[{c:"villager",n:1},{c:"blaze_rod",n:2},{c:"gold_ingot",n:1}]}
data modify storage pnp:cards unlock.blaze_rod append value 223
data modify storage pnp:cards rname.r223 set value {translate:"pnp.card.blaze_charm.name",fallback:"Blaze Charm"}
data modify storage pnp:cards recipes append value {r:224,in:{villager:1,gold_block:1,blaze_powder:1},n:3,time:60,use:["gold_block","blaze_powder"],out:["gilded_charm"],il:[{c:"villager",n:1},{c:"gold_block",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards unlock.gold_block append value 224
data modify storage pnp:cards rname.r224 set value {translate:"pnp.card.gilded_charm.name",fallback:"Gilded Charm"}
data modify storage pnp:cards recipes append value {r:225,in:{villager:1,brewing_stand:1,crimson_fungus:1,gold_ingot:1},n:4,time:60,use:["crimson_fungus","gold_ingot"],out:["enchanted_crimson_fungus"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"crimson_fungus",n:1},{c:"gold_ingot",n:1}]}
data modify storage pnp:cards unlock.crimson_fungus append value 225
data modify storage pnp:cards rname.r225 set value {translate:"pnp.card.enchanted_crimson_fungus.name",fallback:"Enchanted Crimson Fungus"}
data modify storage pnp:cards machines.ender_chest set value {in:1,out:1,storage:27,on_input:"pnp:nethermach/ender_input",on_tick:"pnp:nethermach/ender_tick",on_use:"pnp:nethermach/ender_use"}
data modify storage pnp:cards machines.basalt_generator set value {in:0,out:1,storage:0,accepts:[],on_tick:"pnp:nethermach/basalt_tick"}
data modify storage pnp:cards machines.respawn_anchor set value {in:1,out:0,storage:4,accepts:["glowstone_dust"],on_tick:"pnp:nethermach/anchor_tick"}
data modify storage pnp:music tracks.pigstep set value [{s:"minecraft:music_disc.pigstep",t:2960}]
function pnp:chapter2/pool_add {p:"merchant",c:"pigstep",w:1}
function pnp:chapter2/pool_add {p:"merchant",c:"gilded_charm",w:1}
function pnp:chapter2/pool_add {p:"merchant",c:"blaze_charm",w:1}
function pnp:chapter2/pool_add {p:"pack_bastion",c:"pigstep",w:2}
function pnp:chapter2/pool_add {p:"pack_bastion",c:"idea_barter_station",w:4}
data remove storage pnp:cards listed.q_angler
data remove storage pnp:cards listed.q_delver
data remove storage pnp:cards listed.q_family
data remove storage pnp:cards listed.q_hunter
data remove storage pnp:cards listed.q_miner
data remove storage pnp:cards listed.q_slayer
data remove storage pnp:cards listed.q_survivor
data remove storage pnp:cards listed.q_village
data remove storage pnp:cards listed.q_wanderer
data remove storage pnp:cards listed.q_housing
function pnp:cardopedia/idea_sources
