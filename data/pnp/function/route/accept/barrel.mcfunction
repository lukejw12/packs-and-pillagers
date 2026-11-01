execute if entity @s[tag=!pnp.c.copper_barrel] if score @s pnp.bcount matches 128.. run return fail
execute if score @s pnp.bcount matches 256.. run return fail
execute unless data entity @s item.components."minecraft:custom_data".bt run return 1
data modify storage pnp:board cmp.a set from entity @s item.components."minecraft:custom_data".bt
execute store success score #diff pnp.tmp run data modify storage pnp:board cmp.a set from storage pnp:board rt.c
execute if score #diff pnp.tmp matches 1 run return fail
return 1
