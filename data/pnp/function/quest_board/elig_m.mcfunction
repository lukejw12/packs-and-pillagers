$execute store result score #qem pnp.tmp run data get storage pnp:qb p$(p).m
$execute if score #qem pnp.tmp matches $(v).. run return 1
return 0
