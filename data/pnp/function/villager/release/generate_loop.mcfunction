execute if score #rk pnp.tmp > #rl pnp.tmp run return 0
execute store result storage pnp:board rel.k int 1 run scoreboard players get #rk pnp.tmp
function pnp:villager/release/generate_one with storage pnp:board rel
scoreboard players add #rk pnp.tmp 1
function pnp:villager/release/generate_loop
