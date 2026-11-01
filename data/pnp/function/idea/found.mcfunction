$execute store success score #new pnp.tmp run data modify storage pnp:found p$(p).$(c) set value 1b
$execute if score #new pnp.tmp matches 1 run scoreboard players add #f$(p) pnp.found 1
