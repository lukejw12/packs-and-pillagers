$data modify storage pnp:board tl.n set from storage pnp:cards lvname[$(l)]
$data modify storage pnp:board tl.t set from storage pnp:cards lvnext[$(l)]
function pnp:villager/tips/level_with_text with storage pnp:board tl
