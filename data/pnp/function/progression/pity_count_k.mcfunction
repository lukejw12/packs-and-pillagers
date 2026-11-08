$execute if data storage pnp:found p$(p).$(c) run return 0
$execute store result score #pcn pnp.tmp run data get storage pnp:pity p$(p).$(k)
scoreboard players add #pcn pnp.tmp 1
$execute store result storage pnp:pity p$(p).$(k) int 1 run scoreboard players get #pcn pnp.tmp
