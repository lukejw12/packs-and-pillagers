data modify storage pnp:board ivk set from entity @s Inventory
function pnp:inventory/keep_loop with storage pnp:board ivr
clear @s
$execute in pnp:board unless block $(x) 40 2 minecraft:barrel run setblock $(x) 40 2 minecraft:barrel
$data modify storage pnp:board ivl set from storage pnp:inv p$(p).i
function pnp:inventory/put_loop with storage pnp:board ivr
$data modify storage pnp:board ive set from storage pnp:inv p$(p).e
function pnp:inventory/put_equipment with storage pnp:board ivr
$data remove storage pnp:inv p$(p)
