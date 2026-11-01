data remove storage pnp:board ma
data modify storage pnp:board ma.id set from entity @s item.components."minecraft:custom_data".card
data modify storage pnp:board ma.c set from storage pnp:board rt.c
function pnp:machine/filter_cfg with storage pnp:board ma
