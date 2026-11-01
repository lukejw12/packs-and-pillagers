execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..8] run return 0
playsound minecraft:entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1
particle minecraft:witch ~ ~0.6 ~ 0.3 0.3 0.3 0 12
tag @s add pnp.fcaster
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..8,sort=nearest,limit=3] at @e[type=item_display,tag=pnp.fcaster,limit=1] facing entity @s feet rotated ~ 0 run function pnp:fight/fangs/line
tag @s remove pnp.fcaster
