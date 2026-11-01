$data modify storage pnp:board mg.r set from storage pnp:board ret."$(p)"
execute unless data storage pnp:board mg.r.dim run return run function pnp:maps/give_here with storage pnp:board mg
data modify storage pnp:board mg.dim set from storage pnp:board mg.r.dim
data modify storage pnp:board mg.x set from storage pnp:board mg.r.x
data modify storage pnp:board mg.y set from storage pnp:board mg.r.y
data modify storage pnp:board mg.z set from storage pnp:board mg.r.z
function pnp:maps/give_at with storage pnp:board mg
