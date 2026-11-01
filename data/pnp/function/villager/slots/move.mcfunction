scoreboard players set #fa pnp.tmp 1
execute as @e[type=item_display,tag=pnp.slot_ent,scores={pnp.slotn=1},distance=..3] if score @s pnp.pid = #me pnp.tmp run tp @s ~-0.34 ~0.015 ~0.8
execute as @e[type=item_display,tag=pnp.slot_ent,scores={pnp.slotn=2},distance=..3] if score @s pnp.pid = #me pnp.tmp run tp @s ~0.0 ~0.015 ~0.8
execute as @e[type=item_display,tag=pnp.slot_ent,scores={pnp.slotn=3},distance=..3] if score @s pnp.pid = #me pnp.tmp run tp @s ~0.34 ~0.015 ~0.8
