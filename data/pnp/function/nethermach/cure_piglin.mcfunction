scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.enchanted_crimson_fungus,distance=..64,limit=1] run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.dt,tag=pnp.c.zombified_piglin_ally,limit=1] at @s run function pnp:nethermach/cure_one
