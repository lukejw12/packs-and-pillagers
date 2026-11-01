execute if score #w10 pnp.ids matches 0 store success score @s pnp.wpan if entity @e[type=item_display,tag=pnp.k.enemy,distance=..24]
execute unless score @s pnp.wpan matches 1 run return run scoreboard players set @s pnp.ws 0
execute unless function pnp:wander/can run return 0
scoreboard players remove @s pnp.wt 1
execute if score @s pnp.wt matches ..0 run function pnp:wander/baby_next
function pnp:wander/step_fast
execute store result score #r pnp.tmp run random value 1..12
execute if score #r pnp.tmp matches 1 run particle minecraft:splash ~ ~0.3 ~ 0.15 0.05 0.15 0 3
