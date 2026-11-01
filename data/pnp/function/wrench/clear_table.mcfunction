execute as @e[type=item_display,tag=pnp.port,distance=..48] run kill @s
execute as @e[type=block_display,tag=pnp.link,distance=..64] run data merge entity @s {Glowing:0b}
