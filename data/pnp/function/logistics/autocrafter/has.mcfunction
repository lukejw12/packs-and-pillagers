$data modify storage pnp:board acx.id set from storage pnp:board acr.ids[$(i)]
return run function pnp:logistics/autocrafter/has_2 with storage pnp:board acx
