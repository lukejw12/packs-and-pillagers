scoreboard players set #mq pnp.tmp 0
execute store result score #mq pnp.tmp run data get entity @s item.components."minecraft:custom_data".mq
data remove storage pnp:board mp
data modify storage pnp:board mp.id set from entity @s item.components."minecraft:custom_data".card
function pnp:machine/space_cfg with storage pnp:board mp
