execute store result score #cw pnp.tmp run data get entity @s item.components."minecraft:custom_data".wp.id
execute if score #cw pnp.tmp = #wk pnp.tmp run function pnp:card/remove
