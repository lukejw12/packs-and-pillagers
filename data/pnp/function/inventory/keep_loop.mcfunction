execute unless data storage pnp:board ivk[0] run return 0
data modify storage pnp:board ivc set from storage pnp:board ivk[0]
data remove storage pnp:board ivk[0]
execute if data storage pnp:board ivc.components."minecraft:custom_data".pnp.wrench run return run function pnp:inventory/keep_loop with storage pnp:board ivr
execute if data storage pnp:board ivc.components."minecraft:custom_data".pnp.controls run return run function pnp:inventory/keep_loop with storage pnp:board ivr
execute if data storage pnp:board ivc.components."minecraft:custom_data".pnp.grid run return run function pnp:inventory/keep_loop with storage pnp:board ivr
data remove storage pnp:board ivc.Slot
data modify storage pnp:board ivq set value {t:"item"}
data modify storage pnp:board ivq.item set from storage pnp:board ivc
$data modify storage pnp:deliver p$(p) append from storage pnp:board ivq
$function pnp:inventory/keep_loop {p:$(p),x:$(x)}
