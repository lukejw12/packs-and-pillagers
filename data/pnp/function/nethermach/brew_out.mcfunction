execute unless data storage pnp:board bro[0] run return 0
data modify storage pnp:board brc.c set from storage pnp:board bro[0]
function pnp:api/machine/emit with storage pnp:board brc
data remove storage pnp:board bro[0]
function pnp:nethermach/brew_out
