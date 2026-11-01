tag @e[type=marker,tag=pnp.mycur] remove pnp.mycur
execute as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp run tag @s add pnp.mycur
