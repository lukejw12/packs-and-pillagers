execute as @e[type=marker,tag=pnp.lamp14] at @s run function pnp:light/remove_legacy
execute as @e[type=marker,tag=pnp.lamp15] at @s run function pnp:light/remove_legacy
execute as @e[type=item_display,tag=pnp.c.torch,tag=!pnp.held] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=pnp.lamp6,distance=..0.1] run function pnp:light/place {l:6}
execute as @e[type=item_display,tag=pnp.c.copper_bulb,tag=!pnp.held] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=pnp.lamp10,distance=..0.1] run function pnp:light/place {l:10}
execute as @e[type=marker,tag=pnp.lamp6] at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=item_display,tag=pnp.c.torch,tag=!pnp.held,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function pnp:light/remove
execute as @e[type=marker,tag=pnp.lamp10] at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=item_display,tag=pnp.c.copper_bulb,tag=!pnp.held,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run function pnp:light/remove
