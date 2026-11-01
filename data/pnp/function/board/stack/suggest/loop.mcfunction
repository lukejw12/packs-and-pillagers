execute unless data storage pnp:board scan.list[0] run return 0
execute if data storage pnp:board scan.list[0].s run function pnp:board/stack/suggest/try with storage pnp:board scan.list[0]
data remove storage pnp:board scan.list[0]
function pnp:board/stack/suggest/loop
