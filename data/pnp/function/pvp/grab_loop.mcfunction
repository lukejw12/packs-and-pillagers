execute if score #stole pnp.tmp matches 1.. run return 0
execute unless data storage pnp:pvp sl[0] run return 0
data modify storage pnp:pvp sg.c set from storage pnp:pvp sl[0]
function pnp:pvp/grab_try with storage pnp:pvp sg
data remove storage pnp:pvp sl[0]
function pnp:pvp/grab_loop
