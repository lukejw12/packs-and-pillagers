data modify storage pnp:machine in.c set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.lcm,limit=1] at @s run function pnp:machine/store_in
function pnp:card/remove
