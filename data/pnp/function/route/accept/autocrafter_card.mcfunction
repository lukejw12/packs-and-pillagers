$execute unless data entity @s item.components."minecraft:custom_data".ar.need.$(c) run return fail
$execute store result score #ach pnp.tmp run data get entity @s item.components."minecraft:custom_data".ab.$(c)
$execute store result score #acn pnp.tmp run data get entity @s item.components."minecraft:custom_data".ar.need.$(c)
scoreboard players operation #acn pnp.tmp += #acn pnp.tmp
execute if score #ach pnp.tmp >= #acn pnp.tmp run return fail
return 1
