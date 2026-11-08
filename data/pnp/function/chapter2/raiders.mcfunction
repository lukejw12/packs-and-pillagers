data modify storage pnp:cards defs.gate_outpost set value {id:"gate_outpost",name:"Pillager Outpost",kind:"gate",kn:"Gateway",sell:0,desc:"An unstable gateway to a Pillager Outpost. Stack villagers on it and right-click to send them through.",l1:"Stack villagers on it",l2:"and right-click to",l3:"send them through.",atlas:"minecraft:blocks",sprite:"block/dark_oak_log"}
function pnp:api/add_card {id:"gate_outpost",category:"c9"}
data modify storage pnp:cards defs.gate_swamp set value {id:"gate_swamp",name:"Slime Bog",kind:"gate",kn:"Gateway",sell:0,desc:"An unstable gateway to a Slime Bog. Stack villagers on it and right-click to send them through.",l1:"Stack villagers on it",l2:"and right-click to",l3:"send them through.",atlas:"minecraft:blocks",sprite:"block/slime_block"}
function pnp:api/add_card {id:"gate_swamp",category:"c9"}
data modify storage pnp:cards defs.pillager_captain set value {id:"pillager_captain",name:"Pillager Captain",kind:"enemy",kn:"Raider",sell:0,desc:"Leads the Pillager Outpost. It carries an Ominous Bottle.",l1:"Leads the Pillager",l2:"Outpost. It carries",l3:"an Ominous Bottle.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_pillager",hp:24,atk:3,traits:{boss:1b,ranged:1b},loot:["ominous_bottle","emerald","emerald"]}
function pnp:api/add_card {id:"pillager_captain",category:"c7"}
data modify storage pnp:cards defs.mega_slime set value {id:"mega_slime",name:"Mega Slime",kind:"enemy",kn:"Monster",sell:0,desc:"A huge slime at the bottom of the Slime Bog. It hits hard and knocks fighters back.",l1:"A huge slime that",l2:"hits hard and knocks",l3:"fighters back.",atlas:"minecraft:items",sprite:"pnp:item/art/mob_slime",hp:32,atk:3,traits:{boss:1b,knock:1b},loot:["slimeball","slimeball","slimeball","slimeball"]}
function pnp:api/add_card {id:"mega_slime",category:"c7"}
data modify storage pnp:cards defs.ominous_bottle set value {id:"ominous_bottle",name:"Ominous Bottle",kind:"res",kn:"Item",sell:4,desc:"Right-click it and a Captain's Raid hits your table at nightfall: tougher raiders, better loot.",l1:"Right-click: a",l2:"Captain's Raid hits",l3:"your table at",l4:"nightfall.",atlas:"minecraft:items",sprite:"item/ominous_bottle"}
function pnp:api/add_card {id:"ominous_bottle",category:"c6"}
data modify storage pnp:cards gates.outpost set value {name:"Pillager Outpost",waves:[["pillager","pillager"],["vindicator","pillager","pillager"],["vindicator","vindicator","pillager"],["pillager_captain"]]}
data modify storage pnp:cards gates.swamp set value {name:"Slime Bog",waves:[["slime","slime"],["slime","witch","slime"],["mega_slime"]]}
function pnp:chapter2/pool_add {p:"adventure",c:"gate_outpost",w:1}
function pnp:chapter2/pool_add {p:"combat",c:"gate_outpost",w:1}
function pnp:chapter2/pool_add {p:"swamp",c:"gate_swamp",w:2}
data modify storage pnp:cards gwq append value "outpost"
data modify storage pnp:cards gwq append value "swamp"
