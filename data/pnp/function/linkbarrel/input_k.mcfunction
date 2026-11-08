$execute if data storage pnp:cards defs.$(c){give:""} run return 0
$execute unless data storage pnp:cards defs.$(c).give run return 0
$data modify storage pnp:board lbo.give set from storage pnp:cards defs.$(c).give
$data modify storage pnp:board lbo.gn set from storage pnp:cards defs.$(c).gn
$execute in $(d) unless loaded $(x) $(y) $(z) run return 0
$execute in $(d) positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:barrel run function pnp:linkbarrel/push_find
