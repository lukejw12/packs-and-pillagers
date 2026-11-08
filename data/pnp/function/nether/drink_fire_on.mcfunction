tag @s add pnp.firesafe
scoreboard players set @s pnp.fres 3
particle minecraft:flame ~ ~0.3 ~ 0.2 0.1 0.2 0.01 10
playsound minecraft:entity.generic.drink neutral @a[distance=..24] ~ ~ ~ 0.6 1
title @a[distance=..24,tag=pnp.in_board] actionbar {translate:"pnp.nether.fire_safe",fallback:"Fire can't hurt this villager for 3 days.",color:"gold"}
