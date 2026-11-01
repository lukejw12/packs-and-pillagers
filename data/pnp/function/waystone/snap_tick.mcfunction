scoreboard players remove @s pnp.wsn 1
execute if score @s pnp.wsn matches 0 at @e[type=marker,tag=pnp.wsm,distance=..6,sort=nearest,limit=1] run tp @s ~ ~0.5 ~
