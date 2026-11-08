scoreboard players remove @s pnp.hp 1
particle minecraft:flame ~ ~0.4 ~ 0.2 0.2 0.2 0.02 10
playsound minecraft:entity.blaze.burn master @a[distance=..24] ~ ~ ~ 0.5 1.2
function pnp:card/label/stats
execute if score @s pnp.hp matches ..0 run function pnp:fight/die
