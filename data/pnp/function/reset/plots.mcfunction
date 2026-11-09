scoreboard players add #rp pnp.tmp 1
execute if score #rp pnp.tmp > #rmax pnp.tmp run return 0
execute store result storage pnp:board rst.p int 1 run scoreboard players get #rp pnp.tmp
scoreboard players operation #rx pnp.tmp = #rp pnp.tmp
scoreboard players operation #rx pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board rst.x int 1 run scoreboard players get #rx pnp.tmp
function pnp:reset/plot with storage pnp:board rst
function pnp:reset/plots
