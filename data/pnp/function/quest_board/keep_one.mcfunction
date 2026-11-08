$execute store result score #qkn pnp.tmp run data get storage pnp:qb p$(p).s.$(c).n
$execute store result score #qkt pnp.tmp run data get storage pnp:qb p$(p).s.$(c).t
execute if score #qkt pnp.tmp matches 3.. run return 0
execute if score #qkn pnp.tmp matches ..0 run return 0
$data modify storage pnp:qb p$(p).offer append value {c:"$(c)"}
