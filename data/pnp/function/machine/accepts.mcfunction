data remove storage pnp:board ma
data modify storage pnp:board ma.id set from entity @s item.components."minecraft:custom_data".card
data modify storage pnp:board ma.c set from storage pnp:board rt.c
scoreboard players set #mq pnp.tmp 0
execute store result score #mq pnp.tmp run data get entity @s item.components."minecraft:custom_data".mq
return run function pnp:machine/accepts_cfg with storage pnp:board ma
