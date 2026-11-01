execute unless data entity @s item.components."minecraft:custom_data".mq[0] run return fail
data modify storage pnp:machine io.c set from entity @s item.components."minecraft:custom_data".mq[0]
data remove entity @s item.components."minecraft:custom_data".mq[0]
function pnp:logistics/label/update
return 1
