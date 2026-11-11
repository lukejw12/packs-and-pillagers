data modify storage pnp:cards defs.emerald_shard set from storage pnp:cards defs.emerald
data modify storage pnp:cards defs.emerald_shard merge value {id:"emerald_shard",name:"Emerald Shard",give:"",gn:0,sell:0,sl:"",desc:"A quarter of an Emerald. Stack four to make one.",atlas:"minecraft:items",sprite:"pnp:item/art/emerald_shard",ts:0.346f,tz:-0.2967f,l1:"A quarter of an",l2:"Emerald. Stack four",l3:"to make one.",l4:""}
execute unless data storage pnp:cards recipes[{r:268}] run data modify storage pnp:cards recipes append value {r:268,in:{emerald_shard:4},n:4,time:40,use:["emerald_shard","emerald_shard","emerald_shard","emerald_shard"],out:["emerald"],il:[{c:"emerald_shard",n:4}]}
data modify storage pnp:cards free.r268 set value 1b
data modify storage pnp:cards frac set value ["","1 shard","2 shards","3 shards"]
function pnp:economy/shard_labels
function pnp:api/add_card {id:"emerald_shard",category:"c1"}
