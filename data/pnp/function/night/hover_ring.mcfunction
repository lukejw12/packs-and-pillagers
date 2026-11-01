scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.c.torch,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:night/torch_ring
execute as @e[type=item_display,tag=pnp.c.copper_bulb,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:night/bulb_ring
