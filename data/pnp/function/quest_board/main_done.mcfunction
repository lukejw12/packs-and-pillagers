$data modify storage pnp:qb p$(p).mp set value 0
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$scoreboard players set #qx pnp.tmp $(p)
scoreboard players operation #qx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #qx pnp.tmp 38
execute store result storage pnp:board qbw.x int 1 run scoreboard players get #qx pnp.tmp
$data modify storage pnp:board qbw.p set value $(p)
function pnp:quest_board/reward_k
scoreboard players add #qm pnp.tmp 1
$execute store result storage pnp:qb p$(p).m int 1 run scoreboard players get #qm pnp.tmp
$function pnp:quest_board/next_line {p:$(p)}
$function pnp:chapter2/catchup {p:$(p)}
