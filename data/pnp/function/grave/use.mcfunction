tag @s add pnp.claimer
execute as @e[type=item_display,tag=pnp.c.grave,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:grave/claim
tag @s remove pnp.claimer
