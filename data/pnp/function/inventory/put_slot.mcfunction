$execute unless data storage pnp:board ive.$(k) run return 0
$data modify storage pnp:board ivc set from storage pnp:board ive.$(k)
data modify storage pnp:board ivc.Slot set value 0b
$execute in pnp:board run data modify block $(x) 40 2 Items set value []
$execute in pnp:board run data modify block $(x) 40 2 Items append from storage pnp:board ivc
$execute in pnp:board run item replace entity @s $(slot) from block $(x) 40 2 container.0
