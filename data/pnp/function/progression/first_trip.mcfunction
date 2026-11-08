$data modify storage pnp:pity p$(p).first.$(pool) set value 1b
$data modify storage pnp:board ftl set from storage pnp:cards pfirst.$(pool)
function pnp:progression/first_loop
return 1
