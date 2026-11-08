scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.potion_fire_res,distance=..64,limit=1] run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run function pnp:nether/drink_fire_on
