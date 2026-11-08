execute unless data storage pnp:board qol[0] run return 0
data modify storage pnp:board qkc.c set from storage pnp:board qol[0].c
function pnp:quest_board/keep_one with storage pnp:board qkc
data remove storage pnp:board qol[0]
function pnp:quest_board/keep_loop
