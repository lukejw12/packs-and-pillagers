scoreboard players remove @s pnp.blindt 1
execute if score @s pnp.blindt matches ..0 run tag @s remove pnp.blinded
execute if score @s pnp.blindt matches 20 at @s run particle minecraft:smoke ~ ~0.3 ~ 0.15 0.05 0.15 0.01 4
