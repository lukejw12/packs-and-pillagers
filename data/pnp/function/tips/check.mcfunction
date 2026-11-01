$data modify storage pnp:board tk set value {p:$(p)}
$data modify storage pnp:board tk.k set from storage pnp:cards defs.$(c).kind
execute if data storage pnp:board tk.k run function pnp:tips/check_key with storage pnp:board tk
