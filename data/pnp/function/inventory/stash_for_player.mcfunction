$data modify storage pnp:inv p$(p) set value {i:[],e:{}}
$data modify storage pnp:inv p$(p).i set from entity @s Inventory
$data modify storage pnp:inv p$(p).e set from entity @s equipment
