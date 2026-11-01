execute unless data storage pnp:board scan.list[0] run return 0
function pnp:board/stack/try with storage pnp:board scan.list[0]
execute if score #match pnp.tmp matches 1 run return 1
data remove storage pnp:board scan.list[0]
function pnp:board/stack/match
