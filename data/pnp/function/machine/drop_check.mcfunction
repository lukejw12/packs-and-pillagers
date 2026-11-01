data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.lcm,limit=1] run function pnp:machine/filter_check
