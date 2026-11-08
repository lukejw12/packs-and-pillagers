execute if entity @s[tag=pnp.infight] run return 0
execute if entity @e[type=marker,tag=pnp.fight,distance=..4.5] run return run function pnp:fight_box/join_box
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,tag=!pnp.crown,distance=..48] run return 0
scoreboard players set #u pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,tag=!pnp.crown,distance=..4,sort=nearest,limit=1] run scoreboard players operation #u pnp.tmp = @s pnp.uid
execute if score #u pnp.tmp matches 1.. run return run function pnp:fight_box/join_near
execute facing entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,tag=!pnp.crown,distance=..48,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.035 run tp @s ~ ~ ~
