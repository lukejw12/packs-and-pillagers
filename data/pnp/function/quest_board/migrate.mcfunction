$execute store result score #qmo pnp.tmp run data get storage pnp:qb p$(p).m
execute if score #qmo pnp.tmp matches 25.. run scoreboard players set #qmo pnp.tmp 24
execute store result storage pnp:board qmg.o int 1 run scoreboard players get #qmo pnp.tmp
$data modify storage pnp:board qmg.p set value $(p)
function pnp:quest_board/migrate_k with storage pnp:board qmg
$execute if score #qmo pnp.tmp matches 5 run data modify storage pnp:qb p$(p).mp set value 0
$execute if score #qmo pnp.tmp matches 24 run data modify storage pnp:qb p$(p).mp set value 0
$data modify storage pnp:qb p$(p).v set value 2
