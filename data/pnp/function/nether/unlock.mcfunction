$execute if data storage pnp:nether unlocked.p$(p) run return 0
$data modify storage pnp:nether unlocked.p$(p) set value 1b
$function pnp:nether/ocoords {p:$(p)}
function pnp:nether/unlock_at with storage pnp:board ot
