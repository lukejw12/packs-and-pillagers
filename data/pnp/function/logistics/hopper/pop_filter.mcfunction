data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".flt
data remove entity @s item.components."minecraft:custom_data".flt
function pnp:logistics/pop_output with storage pnp:board rt
