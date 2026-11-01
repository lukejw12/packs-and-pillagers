data modify storage pnp:board cmp.a set from entity @s item.components."minecraft:custom_data".flt
execute store success score #diff pnp.tmp run data modify storage pnp:board cmp.a set from storage pnp:board rt.c
execute if score #diff pnp.tmp matches 1 run return fail
return 1
