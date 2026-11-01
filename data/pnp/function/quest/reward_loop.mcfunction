execute unless data storage pnp:board qrw[0] run return 0
data modify storage pnp:board qrc.c set from storage pnp:board qrw[0]
data remove storage pnp:board qrw[0]
function pnp:quest/reward_one with storage pnp:board qrc
function pnp:quest/reward_loop
