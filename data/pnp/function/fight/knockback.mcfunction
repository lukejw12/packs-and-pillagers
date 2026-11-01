scoreboard players operation #ks pnp.tmp = @s pnp.stack
scoreboard players operation #ku pnp.tmp = @s pnp.uid
scoreboard players set #busy pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..1.6] if score @s pnp.stack = #ks pnp.tmp unless score @s pnp.uid = #ku pnp.tmp run scoreboard players set #busy pnp.tmp 1
execute if score #busy pnp.tmp matches 1 run return 0
execute if entity @s[tag=pnp.infight] run return run scoreboard players add @s pnp.cd 15
execute facing entity @e[type=item_display,tag=pnp.atkr,limit=1] feet rotated ~ 0 positioned ^ ^ ^-0.6 run tp @s ~ ~ ~
scoreboard players add @s pnp.cd 15
