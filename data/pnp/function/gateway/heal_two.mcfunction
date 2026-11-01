scoreboard players add @s pnp.hp 2
execute if score @s pnp.hp > @s pnp.hpmax run scoreboard players operation @s pnp.hp = @s pnp.hpmax
function pnp:card/label/stats
particle minecraft:heart ~ ~0.4 ~ 0.2 0.1 0.2 0 2
