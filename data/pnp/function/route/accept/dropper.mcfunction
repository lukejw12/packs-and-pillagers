execute store result score #q pnp.tmp run data get entity @s item.components."minecraft:custom_data".hb
execute if score #q pnp.tmp matches 6.. run return fail
return run function pnp:route/can_pass
