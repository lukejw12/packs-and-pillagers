execute as @e[type=item_display,tag=pnp.c.barrel,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:logistics/barrel/take_at
