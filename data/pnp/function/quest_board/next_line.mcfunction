$execute store result storage pnp:board qnl.m int 1 run data get storage pnp:qb p$(p).m
$data modify storage pnp:board qnl.p set value $(p)
function pnp:quest_board/next_line_k with storage pnp:board qnl
