$execute store result score #wfd pnp.tmp run data get storage pnp:qb p$(p).wfday
execute if score #wfd pnp.tmp = #day pnp.tmp run return 0
$execute store result storage pnp:qb p$(p).wfday int 1 run scoreboard players get #day pnp.tmp
function pnp:chapter2/event_at {qk:"wellfed"}
