execute unless data storage pnp:board il.list[0] run return 0
data modify storage pnp:board il.r set from storage pnp:board il.list[0].v
function pnp:idea/learn_one with storage pnp:board il
data remove storage pnp:board il.list[0]
function pnp:idea/learn_loop
