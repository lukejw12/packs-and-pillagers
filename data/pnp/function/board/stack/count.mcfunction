scoreboard players add #size pnp.tmp 1
data modify storage pnp:board cnt.c set from entity @s item.components."minecraft:custom_data".card
function pnp:board/stack/add_count with storage pnp:board cnt
