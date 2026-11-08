execute if entity @s[tag=pnp.c.blaze] run return run function pnp:nether/blaze_ai
execute if entity @s[tag=pnp.c.piglin] run return run function pnp:nether/piglin_ai
execute if entity @s[tag=pnp.neutral] run return 0
execute if entity @s[tag=pnp.c.hoglin,tag=!pnp.infight] if entity @e[type=item_display,tag=pnp.c.warped_fungus,distance=..3] run return 0
execute if entity @s[tag=pnp.c.vex] run return 0
execute if entity @s[tag=pnp.c.creeper] run return run function pnp:night/creeper_ai
execute if entity @s[tag=pnp.infight] run return 0
execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
execute if entity @s[tag=pnp.ranged] if entity @e[type=marker,tag=pnp.fight,distance=..4.5] run return run function pnp:fight_box/join_box
execute unless entity @s[tag=pnp.ranged] if entity @e[type=marker,tag=pnp.fight,distance=..2.8] run return run function pnp:fight_box/join_box
execute unless entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48] run return 0
scoreboard players set #u pnp.tmp 0
execute if entity @s[tag=pnp.ranged] as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..4,sort=nearest,limit=1] run scoreboard players operation #u pnp.tmp = @s pnp.uid
execute if score #u pnp.tmp matches 1.. run return run function pnp:fight_box/join_near
execute unless entity @s[tag=pnp.fast] facing entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.035 run tp @s ~ ~ ~
execute if entity @s[tag=pnp.fast] facing entity @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..48,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.065 run tp @s ~ ~ ~
execute at @s as @e[type=item_display,tag=pnp.k.unit,tag=!pnp.held,distance=..1.1,sort=nearest,limit=1] run scoreboard players operation #u pnp.tmp = @s pnp.uid
execute if score #u pnp.tmp matches 1.. run function pnp:fight_box/join_near
