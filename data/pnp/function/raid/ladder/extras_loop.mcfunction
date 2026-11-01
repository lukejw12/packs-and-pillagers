execute unless data storage pnp:board rx[0] run return 0
data modify storage pnp:board rxe set value {from:1,to:9999,n:1}
data modify storage pnp:board rxe merge from storage pnp:board rx[0]
function pnp:raid/ladder/extras_one with storage pnp:board rxe
data remove storage pnp:board rx[0]
function pnp:raid/ladder/extras_loop
