execute if score @s pnp.epoi matches 1.. run function pnp:fight/effects/poison
execute if score @s pnp.eslo matches 1.. run scoreboard players remove @s pnp.eslo 1
execute if score @s pnp.ewea matches 1.. run scoreboard players remove @s pnp.ewea 1
execute if score @s pnp.efat matches 1.. run scoreboard players remove @s pnp.efat 1
execute if score #g5 pnp.tmp matches 0 if score @s pnp.eslo matches 1.. run particle minecraft:entity_effect{color:[0.35f,0.45f,0.65f,1.0f]} ~ ~0.25 ~ 0.2 0.05 0.2 0 1
execute if score #g5 pnp.tmp matches 0 if score @s pnp.efat matches 1.. run particle minecraft:entity_effect{color:[0.55f,0.45f,0.2f,1.0f]} ~ ~0.25 ~ 0.2 0.05 0.2 0 1
execute if score #g5 pnp.tmp matches 0 if score @s pnp.ewea matches 1.. run particle minecraft:entity_effect{color:[0.3f,0.3f,0.3f,1.0f]} ~ ~0.25 ~ 0.2 0.05 0.2 0 1
execute unless score @s pnp.epoi matches 1.. unless score @s pnp.eslo matches 1.. unless score @s pnp.ewea matches 1.. unless score @s pnp.efat matches 1.. unless entity @s[tag=pnp.blinded] run function pnp:fight/effects/clear
