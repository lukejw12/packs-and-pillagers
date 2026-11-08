scoreboard players remove @s pnp.hp 1
particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.0} ~ ~0.5 ~ 0.2 0.2 0.2 0 8
function pnp:card/label/stats
execute if score @s pnp.hp matches ..0 run function pnp:fight/die
