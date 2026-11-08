data remove entity @s item.components."minecraft:custom_data".mq[-1]
data modify storage pnp:board lbo set value {ok:0b}
data modify storage pnp:board lbo.c set from storage pnp:machine io.c
execute unless data entity @s item.components."minecraft:custom_data"{lbm:"out"} run return run function pnp:linkbarrel/back
execute unless data entity @s item.components."minecraft:custom_data".lb run return run function pnp:linkbarrel/back
data modify storage pnp:board lbo merge from entity @s item.components."minecraft:custom_data".lb
function pnp:linkbarrel/input_k with storage pnp:board lbo
execute if data storage pnp:board lbo{ok:0b} run function pnp:linkbarrel/back
