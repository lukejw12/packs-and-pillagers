$execute store result score #bta pnp.tmp run data get entity @s item.components."minecraft:custom_data".bs.$(c)
scoreboard players add #bta pnp.tmp 1
$execute store result entity @s item.components."minecraft:custom_data".bs.$(c) int 1 run scoreboard players get #bta pnp.tmp
