summon item ~ ~0.3 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0,Tags:["pnp.dl_new"]}
data modify entity @e[type=item,tag=pnp.dl_new,limit=1] Item set from storage pnp:board dq[0].item
tag @e[type=item,tag=pnp.dl_new] remove pnp.dl_new
