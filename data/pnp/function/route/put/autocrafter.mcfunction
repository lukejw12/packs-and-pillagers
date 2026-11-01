$execute store result score #ach pnp.tmp run data get entity @s item.components."minecraft:custom_data".ab.$(c)
scoreboard players add #ach pnp.tmp 1
$execute store result entity @s item.components."minecraft:custom_data".ab.$(c) int 1 run scoreboard players get #ach pnp.tmp
function pnp:logistics/label/update
