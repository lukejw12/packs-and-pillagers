scoreboard players remove @s pnp.hp 1
particle minecraft:flame ~ ~0.5 ~ 0.2 0.2 0.2 0.02 8
function pnp:card/label/stats
execute if score @s pnp.hp matches ..0 run function pnp:fight/die
