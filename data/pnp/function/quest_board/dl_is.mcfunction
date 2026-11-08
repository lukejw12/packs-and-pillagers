execute store result storage pnp:board qdx.m int 1 run scoreboard players get #qm pnp.tmp
data modify storage pnp:board qdx.c set from storage pnp:board qdl
return run function pnp:quest_board/dl_is_k with storage pnp:board qdx
