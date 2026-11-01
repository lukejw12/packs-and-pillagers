execute store result score #q pnp.tmp run data get entity @s item.components."minecraft:custom_data".fq
execute if score #q pnp.tmp matches 8.. run return fail
return 1
