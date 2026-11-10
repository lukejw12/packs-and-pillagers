data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.lcm,limit=1] run function pnp:machine/filter_check
execute if entity @e[type=item_display,tag=pnp.lcm,tag=pnp.c.ender_chest] if entity @s[tag=pnp.k.unit] run scoreboard players set #bad pnp.tmp 3
execute if entity @e[type=item_display,tag=pnp.lcm,tag=pnp.c.ender_chest] if entity @s[tag=pnp.k.animal] run scoreboard players set #bad pnp.tmp 3
execute if entity @e[type=item_display,tag=pnp.lcm,tag=pnp.c.ender_chest] if entity @s[tag=pnp.k.enemy] run scoreboard players set #bad pnp.tmp 3
