$execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.$(want),distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:quest/take
