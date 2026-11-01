data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".mo[0]
data remove entity @s item.components."minecraft:custom_data".mo[0]
function pnp:logistics/spill with storage pnp:board rt
function pnp:logistics/label/update
