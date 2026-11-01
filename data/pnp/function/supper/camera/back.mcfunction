execute as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp run data modify entity @s teleport_duration set value 12
$execute as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp run tp @s $(x) $(y) $(z)
$rotate @s $(yaw) $(pitch)
