$data modify storage pnp:board pcy set from storage pnp:cards pity.$(pool)
$data modify storage pnp:board pcy.p set value $(p)
return run function pnp:progression/pity_check_k with storage pnp:board pcy
