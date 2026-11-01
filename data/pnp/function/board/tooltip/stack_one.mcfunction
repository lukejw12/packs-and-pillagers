scoreboard players add #sn pnp.tmp 1
data modify storage pnp:board sk.c set from entity @s item.components."minecraft:custom_data".card
function pnp:board/tooltip/stack_value with storage pnp:board sk
