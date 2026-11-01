execute unless data storage pnp:board fu.list[0] run return 0
execute store result storage pnp:board fu.r int 1 run data get storage pnp:board fu.list[0]
data remove storage pnp:board fu.list[0]
function pnp:idea/find_one with storage pnp:board fu
function pnp:idea/find_loop
