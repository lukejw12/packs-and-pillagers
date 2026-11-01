execute as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp run tp @s ~ 65 ~
scoreboard players set #rayhit pnp.tmp 1
