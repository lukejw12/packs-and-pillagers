execute unless data storage pnp:board brn[0] run return 0
function pnp:nethermach/brew_check_one with storage pnp:board brn[0]
data remove storage pnp:board brn[0]
execute if score #bok pnp.tmp matches 1 run function pnp:nethermach/brew_check
