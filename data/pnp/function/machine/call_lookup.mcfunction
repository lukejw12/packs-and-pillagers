$execute unless data storage pnp:cards machines.$(id).$(f) run return 0
$data modify storage pnp:machine fn.fn set from storage pnp:cards machines.$(id).$(f)
function pnp:machine/call_fn with storage pnp:machine fn
