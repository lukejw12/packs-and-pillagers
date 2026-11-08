data modify storage pnp:cards defs.feather set value {id:"feather",name:"Feather",kind:"res",kn:"Resource",sell:1,desc:"Light as air. Brew it with Nether Wart into a Potion of Slow Falling.",l1:"Light as air. Brew it",l2:"with Nether Wart for",l3:"Slow Falling.",atlas:"minecraft:items",sprite:"item/feather"}
function pnp:api/add_card {id:"feather",category:"c1"}
data modify storage pnp:cards defs.potion_slow_falling set value {id:"potion_slow_falling",name:"Potion of Slow Falling",kind:"res",kn:"Resource",sell:8,desc:"Drop it on a villager: nothing can knock it back until the next supper.",l1:"Drop on a villager:",l2:"it can't be knocked",l3:"back until the next",l4:"supper.",atlas:"minecraft:items",sprite:"pnp:item/art/potion_slow_falling"}
function pnp:api/add_card {id:"potion_slow_falling",category:"c2"}
data modify storage pnp:cards defs.lodestone set value {id:"lodestone",name:"Lodestone",kind:"res",kn:"Item",sell:12,desc:"Export it with a Bundle and place it anywhere in your world, even the Nether. That spot becomes a waystone on your table.",l1:"Place it anywhere in",l2:"your world, even the",l3:"Nether: it becomes a",l4:"waystone.",atlas:"minecraft:blocks",sprite:"block/lodestone_side",give:"minecraft:lodestone",gn:1}
function pnp:api/add_card {id:"lodestone",category:"c4"}
data modify storage pnp:cards defs.linked_barrel set value {id:"linked_barrel",name:"Linked Barrel",kind:"struct",kn:"Structure",sell:4,desc:"Tied to a real barrel in your world. Right-click it to switch between pulling items in and sending piped cards out to that barrel.",l1:"Tied to a real barrel",l2:"in your world. Right-",l3:"click to switch",l4:"between in and out.",atlas:"minecraft:blocks",sprite:"block/barrel_top_open"}
function pnp:api/add_card {id:"linked_barrel",category:"c4"}
data modify storage pnp:cards recipes append value {r:265,in:{villager:1,brewing_stand:1,nether_wart:1,feather:1},n:4,time:60,use:["nether_wart","feather"],out:["potion_slow_falling"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"feather",n:1}]}
data modify storage pnp:cards recipes append value {r:266,in:{villager:1,brewing_stand:1,nether_wart:1,feather:1,blaze_powder:1},n:5,time:60,use:["nether_wart","feather","blaze_powder"],out:["potion_slow_falling","potion_slow_falling"],il:[{c:"villager",n:1},{c:"brewing_stand",n:1},{c:"nether_wart",n:1},{c:"feather",n:1},{c:"blaze_powder",n:1}]}
data modify storage pnp:cards recipes append value {r:267,in:{villager:1,netherite_ingot:1,cobblestone:4},n:6,time:120,use:["netherite_ingot","cobblestone","cobblestone","cobblestone","cobblestone"],out:["lodestone"],il:[{c:"villager",n:1},{c:"netherite_ingot",n:1},{c:"cobblestone",n:4}]}
data modify storage pnp:cards unlock.feather append value 265
data modify storage pnp:cards unlock.feather append value 266
data modify storage pnp:cards unlock.netherite_ingot append value 267
data modify storage pnp:cards drinks.potion_slow_falling set value "slow"
data modify storage pnp:cards brew merge value {r265:1b,r266:1b}
data modify storage pnp:cards brewr prepend value {n:[{c:"nether_wart",k:1},{c:"feather",k:1},{c:"blaze_powder",k:1}],o:["potion_slow_falling","potion_slow_falling"]}
data modify storage pnp:cards brewr append value {n:[{c:"nether_wart",k:1},{c:"feather",k:1}],o:["potion_slow_falling"]}
data modify storage pnp:cards machines.brewing_stand.accepts append value "feather"
function pnp:chapter2/pool_add {p:"forest",c:"feather",w:2}
function pnp:chapter2/pool_add {p:"adventure",c:"feather",w:1}
data modify storage pnp:cards from_item."minecraft:feather" set value {c:"feather",g:1}
data modify storage pnp:cards from_item."minecraft:lodestone" set value {c:"lodestone",g:1}
data modify storage pnp:cards machines.linked_barrel set value {in:1,out:1,storage:4,on_input:"pnp:linkbarrel/input",on_tick:"pnp:linkbarrel/tick",on_use:"pnp:linkbarrel/toggle"}
data modify storage pnp:cards defs.wildfire_shield.desc set value "Blocks like a Shield, with +2 health. Anything that hits its holder takes 1 fire damage."
