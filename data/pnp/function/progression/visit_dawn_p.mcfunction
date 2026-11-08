$execute store result score #vm pnp.tmp run data get storage pnp:qb p$(p).m
execute if score #vm pnp.tmp matches ..5 run return 0
$execute if data storage pnp:qb p$(p).tfirst run return 0
$data modify storage pnp:qb p$(p).tfirst set value 1b
function pnp:trader/arrive
