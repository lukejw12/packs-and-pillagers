$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$scoreboard players set #qp pnp.tmp $(p)
execute store result storage pnp:board qhv.m int 1 run scoreboard players get #qm pnp.tmp
$data modify storage pnp:board qhv.p set value $(p)
function pnp:quest_board/have_k with storage pnp:board qhv
