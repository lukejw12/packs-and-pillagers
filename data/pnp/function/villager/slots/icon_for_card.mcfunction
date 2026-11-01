data remove storage pnp:board si.g
$execute if data storage pnp:cards defs.$(c).icon run data modify storage pnp:board si.i set from storage pnp:cards defs.$(c).icon
$execute if data storage pnp:cards defs.$(c).icon run return run function pnp:villager/slots/icon_mace with storage pnp:board si
$data modify storage pnp:board si.g set from storage pnp:cards defs.$(c).give
$execute if data storage pnp:cards defs.$(c).iid run data modify storage pnp:board si.g set from storage pnp:cards defs.$(c).iid
execute unless data storage pnp:board si.g run return fail
function pnp:villager/slots/icon_item with storage pnp:board si
