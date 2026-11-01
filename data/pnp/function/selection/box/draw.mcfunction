scoreboard players operation #bw pnp.tmp = #X2 pnp.tmp
scoreboard players operation #bw pnp.tmp -= #X1 pnp.tmp
scoreboard players operation #bd pnp.tmp = #Z2 pnp.tmp
scoreboard players operation #bd pnp.tmp -= #Z1 pnp.tmp
scoreboard players operation #zn pnp.tmp = #Z1 pnp.tmp
scoreboard players remove #zn pnp.tmp 3
scoreboard players operation #zs pnp.tmp = #Z2 pnp.tmp
scoreboard players remove #zs pnp.tmp 3
scoreboard players operation #xw pnp.tmp = #X1 pnp.tmp
scoreboard players remove #xw pnp.tmp 3
scoreboard players operation #xe pnp.tmp = #X2 pnp.tmp
scoreboard players remove #xe pnp.tmp 3
execute as @e[type=block_display,tag=pnp.selbox] if score @s pnp.pid = #me pnp.tmp run function pnp:selection/box/bar
