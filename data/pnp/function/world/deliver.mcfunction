function pnp:board/plot/get_coords
$data modify storage pnp:board tmp.card set value "$(card)"
function pnp:world/deliver_at with storage pnp:board tmp
$function pnp:world/deliver_message with storage pnp:cards defs.$(card)
