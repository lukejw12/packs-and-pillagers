data modify entity @s item.components."minecraft:custom_data".mo append from storage pnp:machine io.c
scoreboard players set #ppok pnp.tmp 1
execute at @s run particle minecraft:portal ~ ~0.3 ~ 0.2 0.1 0.2 0.3 6
