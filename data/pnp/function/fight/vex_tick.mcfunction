execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
scoreboard players add @s pnp.life 1
execute if score @s pnp.life matches 600.. run return run function pnp:fight/die
execute if entity @s[tag=pnp.infight] run return 0
execute if entity @e[type=marker,tag=pnp.fight,distance=..3] run return run function pnp:fight_box/join_box
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48] run return 0
execute facing entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48,sort=nearest,limit=1] feet positioned ^ ^ ^0.085 run tp @s ~ 65.31 ~
scoreboard players set #u pnp.tmp 0
execute at @s as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..1.0,sort=nearest,limit=1] run scoreboard players operation #u pnp.tmp = @s pnp.uid
execute if score #u pnp.tmp matches 1.. run function pnp:fight_box/join_near
