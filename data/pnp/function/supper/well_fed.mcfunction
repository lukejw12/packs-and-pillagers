tag @s add pnp.wellfed
scoreboard players add @s pnp.hp 2
execute if score @s pnp.hp > @s pnp.hpmax run scoreboard players operation @s pnp.hp = @s pnp.hpmax
particle minecraft:happy_villager ~ ~0.3 ~ 0.25 0.1 0.25 0 5
function pnp:villager/recalculate
