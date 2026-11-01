execute unless data storage pnp:board sc.list[0] run return 0
data modify storage pnp:board sc.card set from storage pnp:board sc.list[0]
scoreboard players operation #col pnp.tmp = #i pnp.tmp
scoreboard players operation #col pnp.tmp %= #8 pnp.tmp
scoreboard players operation #row pnp.tmp = #i pnp.tmp
scoreboard players operation #row pnp.tmp /= #8 pnp.tmp
execute store result storage pnp:board sc.dx float 1.1 run scoreboard players get #col pnp.tmp
execute store result storage pnp:board sc.dz float 1.25 run scoreboard players get #row pnp.tmp
function pnp:debug/showcase_spawn with storage pnp:board sc
data remove storage pnp:board sc.list[0]
scoreboard players add #i pnp.tmp 1
function pnp:debug/showcase_loop
