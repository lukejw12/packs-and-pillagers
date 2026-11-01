$execute store result score #qst pnp.tmp run data get storage pnp:qb p$(p).s.s_delver.t
execute if score #qst pnp.tmp matches 3.. run return 0
$execute store result score #qsn pnp.tmp run data get storage pnp:qb p$(p).s.s_delver.n
$scoreboard players add #qsn pnp.tmp $(n)
execute if score #qst pnp.tmp matches 0 run scoreboard players set #qsneed pnp.tmp 1
execute if score #qst pnp.tmp matches 1 run scoreboard players set #qsneed pnp.tmp 3
execute if score #qst pnp.tmp matches 2 run scoreboard players set #qsneed pnp.tmp 6
$execute store result storage pnp:qb p$(p).s.s_delver.n int 1 run scoreboard players get #qsn pnp.tmp
$execute if score #qsn pnp.tmp >= #qsneed pnp.tmp run function pnp:quest_board/complete_side/s_delver {p:$(p)}
