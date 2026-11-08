$execute unless data storage pnp:cards c2ev.$(c) run return 0
$data modify storage pnp:board qcf set value {o:$(p)}
$data modify storage pnp:board qcf.qk set from storage pnp:cards c2ev.$(c)
function pnp:quest/on_event with storage pnp:board qcf
