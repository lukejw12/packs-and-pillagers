execute if function pnp:shop/locked run return run function pnp:shop/label_locked
execute store result storage pnp:board shl.paid int 1 run scoreboard players get @s pnp.paid
execute store result storage pnp:board shl.price int 1 run scoreboard players get @s pnp.price
function pnp:shop/label_with_price with storage pnp:board shl
