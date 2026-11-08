execute unless data storage pnp:board ftl[0] run return 0
data modify storage pnp:board ftc.c set from storage pnp:board ftl[0]
function pnp:progression/first_pop with storage pnp:board ftc
data remove storage pnp:board ftl[0]
function pnp:progression/first_loop
