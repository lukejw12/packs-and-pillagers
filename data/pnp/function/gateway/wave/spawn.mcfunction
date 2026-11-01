execute unless data storage pnp:board gw.list[0] run return 0
data modify storage pnp:board gw.card set from storage pnp:board gw.list[0]
data remove storage pnp:board gw.list[0]
scoreboard players operation #wx pnp.tmp = #wi pnp.tmp
scoreboard players operation #wx pnp.tmp *= #22 pnp.tmp
execute store result storage pnp:board gw.dx double 0.1 run scoreboard players get #wx pnp.tmp
function pnp:gateway/wave/one with storage pnp:board gw
scoreboard players add #wi pnp.tmp 1
function pnp:gateway/wave/spawn
