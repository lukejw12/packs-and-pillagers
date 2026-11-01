execute unless score @s pnp.ffuel matches 1.. run return 0
scoreboard players add @s pnp.fprog 10
particle minecraft:smoke ~ ~0.3 ~-0.1 0.1 0.05 0.1 0.01 2
particle minecraft:flame ~ ~0.1 ~0.1 0.08 0.02 0.08 0.005 1
execute if score @s pnp.fprog matches 160.. run function pnp:logistics/furnace/done
