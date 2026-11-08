execute unless data storage pnp:board exl[0] run return 0
data modify storage pnp:board exc.t set from storage pnp:board exl[0]
execute store result score #exf pnp.tmp run function pnp:progression/expedition_found with storage pnp:board exc
execute if score #exf pnp.tmp matches 0 run return run data modify storage pnp:board exc.c set from storage pnp:board exl[0]
data remove storage pnp:board exl[0]
function pnp:progression/expedition_loop
