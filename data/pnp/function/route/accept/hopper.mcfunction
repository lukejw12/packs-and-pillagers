execute store result score #q pnp.tmp run data get entity @s item.components."minecraft:custom_data".hb
execute if score #q pnp.tmp matches 4.. run return fail
execute if data entity @s item.components."minecraft:custom_data".flt unless function pnp:route/dedicated_filter run return fail
return run function pnp:route/can_pass
