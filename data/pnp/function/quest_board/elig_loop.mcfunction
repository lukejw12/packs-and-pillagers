execute unless data storage pnp:board qcl[0] run return 0
data modify storage pnp:board qec.c set from storage pnp:board qcl[0]
function pnp:quest_board/elig_one with storage pnp:board qec
data remove storage pnp:board qcl[0]
function pnp:quest_board/elig_loop
