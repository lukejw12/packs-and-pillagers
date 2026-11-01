scoreboard players operation #svi pnp.tmp = #sv pnp.tmp
scoreboard players operation #svi pnp.tmp /= #4 pnp.tmp
scoreboard players operation #svr pnp.tmp = #sv pnp.tmp
scoreboard players operation #svr pnp.tmp %= #4 pnp.tmp
execute store result storage pnp:board fm.i int 1 run scoreboard players get #svi pnp.tmp
execute store result storage pnp:board fm.r int 1 run scoreboard players get #svr pnp.tmp
function pnp:economy/format_fraction with storage pnp:board fm
