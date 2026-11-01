$data modify storage pnp:board fm.f set from storage pnp:cards frac[$(r)]
execute if score #svi pnp.tmp matches 0 run data modify storage pnp:board tipj.svs set from storage pnp:board fm.f
execute if score #svi pnp.tmp matches 0 if score #svr pnp.tmp matches 0 run data modify storage pnp:board tipj.svs set value "0"
execute if score #svi pnp.tmp matches 1.. run function pnp:economy/format_join with storage pnp:board fm
