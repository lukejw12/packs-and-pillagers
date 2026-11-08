$execute unless data storage pnp:cards ideas.$(c).r[0] run return 0
$data modify storage pnp:board pkk set value {p:$(p)}
$execute store result storage pnp:board pkk.r int 1 run data get storage pnp:cards ideas.$(c).r[0].v
return run function pnp:progression/pack_known_r with storage pnp:board pkk
