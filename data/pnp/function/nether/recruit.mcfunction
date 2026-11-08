tag @e[type=item_display,tag=pnp.held,tag=pnp.c.gold_ingot,distance=..64,limit=3] add pnp.gpay
execute as @e[type=item_display,tag=pnp.gpay] run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:nether/recruit_at
