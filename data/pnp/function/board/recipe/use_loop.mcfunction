execute unless data storage pnp:board work.use[0] run return 0
data modify storage pnp:board work.u set from storage pnp:board work.use[0]
function pnp:board/recipe/use_one with storage pnp:board work
data remove storage pnp:board work.use[0]
function pnp:board/recipe/use_loop
