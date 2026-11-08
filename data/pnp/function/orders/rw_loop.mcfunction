execute unless data storage pnp:board orw[0] run return 0
data modify storage pnp:board orc.card set from storage pnp:board orw[0]
data remove storage pnp:board orw[0]
function pnp:card/pop with storage pnp:board orc
function pnp:orders/rw_loop
