data remove entity @s item.components."minecraft:custom_data".mq[-1]
execute store result score #bto pnp.tmp run data get entity @s item.components."minecraft:custom_data".bt
execute if score #bto pnp.tmp matches 16.. run return run function pnp:nethermach/brew_full
scoreboard players add #bto pnp.tmp 1
execute store result entity @s item.components."minecraft:custom_data".bt int 1 run scoreboard players get #bto pnp.tmp
function pnp:nethermach/brew_add with storage pnp:machine io
