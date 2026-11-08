$execute if data storage pnp:qb p$(p).offer[{c:"$(c)"}] run return 0
$execute if score #qex pnp.tmp matches 1 if data storage pnp:board qrm[{c:"$(c)"}] run return 0
$execute store result score #qeu pnp.tmp run function pnp:quest_board/elig_unlocked {p:$(p),c:"$(c)"}
execute if score #qeu pnp.tmp matches 0 run return 0
$execute store result score #qet pnp.tmp run data get storage pnp:qb p$(p).s.$(c).t
execute if score #qet pnp.tmp matches 3.. run return 0
$data modify storage pnp:board qel append value "$(c)"
