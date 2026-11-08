$execute store result score #bh pnp.tmp run data get entity @s item.components."minecraft:custom_data".bs.$(c)
$scoreboard players remove #bh pnp.tmp $(k)
$execute store result entity @s item.components."minecraft:custom_data".bs.$(c) int 1 run scoreboard players get #bh pnp.tmp
execute store result score #bto pnp.tmp run data get entity @s item.components."minecraft:custom_data".bt
$scoreboard players remove #bto pnp.tmp $(k)
execute store result entity @s item.components."minecraft:custom_data".bt int 1 run scoreboard players get #bto pnp.tmp
