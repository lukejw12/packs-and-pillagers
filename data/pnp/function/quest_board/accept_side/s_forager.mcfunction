$execute unless data storage pnp:qb p$(p).offer[{c:"s_forager"}] run return 0
$execute store result score #qst pnp.tmp run data get storage pnp:qb p$(p).s.s_forager.t
execute if score #qst pnp.tmp matches 3.. run return 0
$execute store result score #qsn pnp.tmp run data get storage pnp:qb p$(p).s.s_forager.n
$scoreboard players add #qsn pnp.tmp $(n)
execute if score #qst pnp.tmp matches 0 run scoreboard players set #qsneed pnp.tmp 10
execute if score #qst pnp.tmp matches 1 run scoreboard players set #qsneed pnp.tmp 30
execute if score #qst pnp.tmp matches 2 run scoreboard players set #qsneed pnp.tmp 80
$execute store result storage pnp:qb p$(p).s.s_forager.n int 1 run scoreboard players get #qsn pnp.tmp
$execute if score #qsn pnp.tmp >= #qsneed pnp.tmp run function pnp:quest_board/complete_side/s_forager {p:$(p)}
