$execute store result score #vm pnp.tmp run data get storage pnp:qb p$(p).m
execute if score #vm pnp.tmp matches ..6 run return 0
$execute if data storage pnp:qb p$(p).cfirst run return 0
$data modify storage pnp:qb p$(p).cfirst set value 1b
return 1
