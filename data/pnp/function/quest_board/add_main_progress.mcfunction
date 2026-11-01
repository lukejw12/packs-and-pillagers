$execute store result score #qmp pnp.tmp run data get storage pnp:qb p$(p).mp
$scoreboard players add #qmp pnp.tmp $(n)
$execute store result storage pnp:qb p$(p).mp int 1 run scoreboard players get #qmp pnp.tmp
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
function pnp:quest_board/main_need
$execute if score #qmp pnp.tmp >= #qmn pnp.tmp run function pnp:quest_board/main_done {p:$(p)}
