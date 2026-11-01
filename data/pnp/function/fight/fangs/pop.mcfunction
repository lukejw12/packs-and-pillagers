data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0.78f,0.78f,0.78f]}}
playsound minecraft:entity.evoker_fangs.attack hostile @a[distance=..24] ~ ~ ~ 0.8 1
particle minecraft:crit ~ ~0.2 ~ 0.2 0.1 0.2 0.1 6
execute if entity @s[tag=pnp.fxally] run return run execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.held,distance=..0.9] at @s run function pnp:fight/staff/fang_hit
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..0.9] at @s run function pnp:fight/fangs/hit
