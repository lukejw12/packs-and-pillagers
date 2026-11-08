data modify storage pnp:cards defs.badlands set value {id:"badlands",name:"Badlands",kind:"node",kn:"Node",sell:0,desc:"Put a villager on it to dig for gold and Terracotta.",l1:"Put a villager on it",l2:"to dig for gold and",l3:"Terracotta.",atlas:"minecraft:blocks",sprite:"block/red_sand"}
function pnp:api/add_card {id:"badlands",category:"c3"}
data modify storage pnp:cards defs.snowy_plains set value {id:"snowy_plains",name:"Snowy Plains",kind:"node",kn:"Node",sell:0,desc:"Put a villager on it to gather Ice, wood and berries.",l1:"Put a villager on it",l2:"to gather Ice, wood",l3:"and berries.",atlas:"minecraft:blocks",sprite:"block/snow"}
function pnp:api/add_card {id:"snowy_plains",category:"c3"}
data modify storage pnp:cards defs.swamp set value {id:"swamp",name:"Swamp",kind:"node",kn:"Node",sell:0,desc:"Put a villager on it for Slimeballs and Sugar Cane. Once you know a Swamp, Witches come out at night.",l1:"Put a villager on it",l2:"for Slimeballs and",l3:"Sugar Cane. Witches",l4:"come out at night.",atlas:"minecraft:blocks",sprite:"block/lily_pad"}
function pnp:api/add_card {id:"swamp",category:"c3"}
data modify storage pnp:cards defs.terracotta set value {id:"terracotta",name:"Terracotta",kind:"res",kn:"Resource",sell:3,desc:"Colorful clay from the Badlands. It sells well.",l1:"Colorful clay from",l2:"the Badlands. It",l3:"sells well.",atlas:"minecraft:blocks",sprite:"block/terracotta"}
function pnp:api/add_card {id:"terracotta",category:"c1"}
data modify storage pnp:cards defs.ice set value {id:"ice",name:"Ice",kind:"res",kn:"Resource",sell:2,desc:"Set it next to food on the Nether table and that food chars half as fast.",l1:"Next to food on the",l2:"Nether table, food",l3:"chars half as fast.",atlas:"minecraft:blocks",sprite:"block/ice"}
function pnp:api/add_card {id:"ice",category:"c1"}
data modify storage pnp:cards defs.slimeball set value {id:"slimeball",name:"Slimeball",kind:"res",kn:"Resource",sell:3,desc:"Sticky. With Blaze Powder, it makes Magma Cream.",l1:"Sticky. With Blaze",l2:"Powder, it makes",l3:"Magma Cream.",atlas:"minecraft:items",sprite:"item/slime_ball"}
function pnp:api/add_card {id:"slimeball",category:"c1"}
data modify storage pnp:cards defs.honey_bottle set value {id:"honey_bottle",name:"Honey Bottle",kind:"food",kn:"Food",sell:3,desc:"Sweet and filling. Good for supper.",l1:"Sweet and filling.",l2:"Good for supper.",atlas:"minecraft:items",sprite:"item/honey_bottle",food:3}
function pnp:api/add_card {id:"honey_bottle",category:"c2"}
data modify storage pnp:cards defs.bee_nest set value {id:"bee_nest",name:"Bee Nest",kind:"struct",kn:"Structure",sell:6,desc:"A machine. The bees fill a Honey Bottle every 60 seconds.",l1:"The bees fill a Honey",l2:"Bottle every 60",l3:"seconds.",atlas:"minecraft:blocks",sprite:"block/bee_nest_front"}
function pnp:api/add_card {id:"bee_nest",category:"c4"}
data modify storage pnp:cards defs.horse set value {id:"horse",name:"Horse",kind:"animal",kn:"Animal",sell:10,desc:"Put it in a villager's talisman slot and that villager explores twice as fast.",l1:"Give it to a villager",l2:"as a talisman: it",l3:"explores twice as",l4:"fast.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_horse"}
function pnp:api/add_card {id:"horse",category:"c3"}
data modify storage pnp:cards defs.witch set value {id:"witch",name:"Witch",kind:"enemy",kn:"Enemy",sell:0,desc:"Throws potions from a distance. Its hits poison.",l1:"Throws potions from",l2:"a distance. Its hits",l3:"poison.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_witch",hp:6,atk:2,traits:{ranged:1b},loot:["glowstone_dust","sugar"]}
function pnp:api/add_card {id:"witch",category:"c7"}
data modify storage pnp:cards defs.slime set value {id:"slime",name:"Slime",kind:"enemy",kn:"Enemy",sell:0,desc:"A bouncy swamp cube. It drops Slimeballs.",l1:"A bouncy swamp cube.",l2:"It drops Slimeballs.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_slime",hp:6,atk:1,loot:["slimeball","slimeball"]}
function pnp:api/add_card {id:"slime",category:"c7"}
data modify storage pnp:cards recipes append value {r:242,in:{villager:1,badlands:1},n:2,time:100,use:[],out:["@badlands"],il:[{c:"villager",n:1},{c:"badlands",n:1}]}
data modify storage pnp:cards unlock.badlands append value 242
data modify storage pnp:cards recipes append value {r:243,in:{villager:1,snowy_plains:1},n:2,time:100,use:[],out:["@snowy_plains"],il:[{c:"villager",n:1},{c:"snowy_plains",n:1}]}
data modify storage pnp:cards unlock.snowy_plains append value 243
data modify storage pnp:cards recipes append value {r:244,in:{villager:1,swamp:1},n:2,time:100,use:[],out:["@swamp"],il:[{c:"villager",n:1},{c:"swamp",n:1}]}
data modify storage pnp:cards unlock.swamp append value 244
data modify storage pnp:cards recipes append value {r:245,in:{villager:1,slimeball:1,blaze_powder:1},n:3,time:40,use:["slimeball","blaze_powder"],out:["magma_cream"],il:[{c:"villager",n:1},{c:"slimeball",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards unlock.slimeball append value 245
data modify storage pnp:cards pools.badlands set value {t:86,e:[{c:"terracotta",w:24},{c:"gold_ore",w:16},{c:"cobblestone",w:14},{c:"gold_nugget",w:12},{c:"iron_ore",w:6},{c:"cactus",w:6},{c:"skeleton",w:5},{c:"gold_ingot",w:3}]}
data modify storage pnp:cards pools.snowy_plains set value {t:69,e:[{c:"ice",w:22},{c:"oak_log",w:16},{c:"cobblestone",w:10},{c:"sweet_berries",w:8},{c:"stray",w:6},{c:"wolf",w:4},{c:"rabbit_foot",w:3}]}
data modify storage pnp:cards pools.swamp set value {t:61,e:[{c:"slimeball",w:18},{c:"oak_log",w:14},{c:"sugar_cane",w:10},{c:"slime",w:8},{c:"cod",w:6},{c:"witch",w:5}]}
function pnp:chapter2/pool_add {p:"adventure",c:"badlands",w:1}
function pnp:chapter2/pool_add {p:"adventure",c:"snowy_plains",w:1}
function pnp:chapter2/pool_add {p:"adventure",c:"swamp",w:1}
function pnp:chapter2/pool_add {p:"mountain",c:"snowy_plains",w:1}
function pnp:chapter2/pool_add {p:"forest",c:"bee_nest",w:1}
function pnp:chapter2/pool_add {p:"forest",c:"horse",w:1}
function pnp:chapter2/pool_add {p:"adventure",c:"horse",w:1}
data modify storage pnp:cards expd.forest_compass.o append value "badlands"
data modify storage pnp:cards expd.forest_compass.o append value "snowy_plains"
data modify storage pnp:cards expd.forest_compass.o append value "swamp"
data modify storage pnp:cards foods append value {id:"honey_bottle",o:5}
data modify storage pnp:cards machines.bee_nest set value {in:0,out:1,storage:0,accepts:[],on_tick:"pnp:nethermach/honey_tick"}
data modify storage pnp:cards slot.horse set value "s"
data modify storage pnp:cards taltxt.horse set value {text:"\n",color:"dark_aqua",extra:[{translate:"pnp.villager.riding_a_horse",fallback:"Riding a Horse: explores twice as fast"}]}
data modify storage pnp:cards nodework set value {r1:1b,r3:1b,r23:1b,r24:1b,r25:1b,r26:1b,r27:1b,r28:1b,r60:1b,r148:1b,r149:1b,r163:1b,r164:1b,r170:1b,r171:1b,r172:1b,r173:1b,r174:1b,r182:1b,r183:1b,r211:1b,r212:1b,r214:1b,r229:1b,r242:1b,r243:1b,r244:1b,r1007:1b}
