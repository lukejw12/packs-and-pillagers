$execute unless data storage pnp:qb p$(p).rlive run return 0
$execute store result score #rlo pnp.tmp run data get storage pnp:qb p$(p).rloss
scoreboard players add #rlo pnp.tmp 1
$execute store result storage pnp:qb p$(p).rloss int 1 run scoreboard players get #rlo pnp.tmp
