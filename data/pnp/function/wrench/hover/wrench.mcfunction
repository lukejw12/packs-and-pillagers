scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.c.wrench,distance=..64] if score @s pnp.uid = #uid pnp.tmp run return 1
return fail
