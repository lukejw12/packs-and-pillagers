scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~ 65.01 ~1.05 run function pnp:board/drop/free
return 1
