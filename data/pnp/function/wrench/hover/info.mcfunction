tag @s add pnp.actor
execute as @e[type=item_display,tag=pnp.port,distance=..48] if score @s pnp.portid = #ph pnp.tmp run function pnp:wrench/hover/port
tag @s remove pnp.actor
