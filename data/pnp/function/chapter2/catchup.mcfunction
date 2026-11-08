$execute store result score #qc pnp.tmp run data get storage pnp:qb p$(p).m
$data modify storage pnp:board qcu set value {o:$(p)}
execute store result storage pnp:board qcu.m int 1 run scoreboard players get #qc pnp.tmp
function pnp:chapter2/catchup_k with storage pnp:board qcu
