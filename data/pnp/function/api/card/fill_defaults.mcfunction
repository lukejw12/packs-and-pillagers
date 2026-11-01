data modify storage pnp:api def set value {hp:0,atk:0,give:"",gn:0,loot:[],desc:"",atlas:"minecraft:items",sprite:"item/paper",kn:"",l1:"",l2:"",l3:"",l4:"",sell:0,sl:"0",heal:0,pool:"",count:0,price:0,pack:"",lw:200}
$data modify storage pnp:api def merge from storage pnp:cards defs.$(id)
$data modify storage pnp:cards defs.$(id) set from storage pnp:api def
