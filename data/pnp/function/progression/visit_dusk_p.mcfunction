$execute store result score #vm pnp.tmp run data get storage pnp:qb p$(p).m
$execute if score #vm pnp.tmp matches 6.. unless data storage pnp:qb p$(p).tfirst unless data storage pnp:qb p$(p).tsaid run tellraw @s {translate:"pnp.visit.trader_tomorrow",fallback:"A Wandering Trader stops by tomorrow.",color:"aqua"}
$execute if score #vm pnp.tmp matches 6.. unless data storage pnp:qb p$(p).tfirst run data modify storage pnp:qb p$(p).tsaid set value 1b
$execute if score #vm pnp.tmp matches 7.. unless data storage pnp:qb p$(p).cfirst unless data storage pnp:qb p$(p).csaid run tellraw @s {translate:"pnp.visit.carpenter_soon",fallback:"A Wandering Carpenter will visit your world soon.",color:"aqua"}
$execute if score #vm pnp.tmp matches 7.. unless data storage pnp:qb p$(p).cfirst run data modify storage pnp:qb p$(p).csaid set value 1b
