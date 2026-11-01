data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".hb[0]
data remove entity @s item.components."minecraft:custom_data".hb[0]
function pnp:logistics/pop_output with storage pnp:board rt
