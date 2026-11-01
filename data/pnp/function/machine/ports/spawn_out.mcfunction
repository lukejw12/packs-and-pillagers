execute if score #mi pnp.tmp >= #mout pnp.tmp run return 0
scoreboard players add #mi pnp.tmp 1
scoreboard players operation #pn pnp.tmp = #mi pnp.tmp
scoreboard players operation #mcount pnp.tmp = #mout pnp.tmp
function pnp:machine/ports/z
execute store result storage pnp:board mpp.z double 0.001 run scoreboard players get #oz pnp.tmp
data modify storage pnp:board mpp.x set value 0.56
scoreboard players add #pn pnp.tmp 10
execute store result storage pnp:board mpp.n int 1 run scoreboard players get #pn pnp.tmp
function pnp:machine/ports/one_out with storage pnp:board mpp
function pnp:machine/ports/spawn_out
