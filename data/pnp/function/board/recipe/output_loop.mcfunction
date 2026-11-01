execute unless data storage pnp:board work.out[0] run return 0
data modify storage pnp:board work.o set from storage pnp:board work.out[0]
function pnp:board/recipe/output_one with storage pnp:board work
data remove storage pnp:board work.out[0]
function pnp:board/recipe/output_loop
