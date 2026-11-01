scoreboard players set #lc2 pnp.ids 0
execute as @e[type=item_display,tag=pnp.c.barrel,tag=pnp.hasout,scores={pnp.bcount=1..}] at @s run function pnp:logistics/barrel/push
execute as @e[type=item_display,tag=pnp.c.hopper] at @s if data entity @s item.components."minecraft:custom_data".hb[0] run function pnp:logistics/pump/hopper
execute as @e[type=item_display,tag=pnp.c.dropper] at @s if data entity @s item.components."minecraft:custom_data".hb[0] run function pnp:logistics/pump/dropper
execute as @e[type=item_display,tag=pnp.c.furnace] at @s if data entity @s item.components."minecraft:custom_data".fq[0] run function pnp:logistics/furnace/tick
execute as @e[type=item_display,tag=pnp.port] at @s run function pnp:wrench/port/follow
execute as @e[type=item_display,tag=pnp.c.autocrafter] at @s if data entity @s item.components."minecraft:custom_data".ar run function pnp:logistics/autocrafter/tick
