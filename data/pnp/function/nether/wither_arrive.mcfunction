tag @s add pnp.wbar
execute store result score #wx pnp.tmp run data get entity @s Pos[0]
scoreboard players add #wx pnp.tmp 64
scoreboard players operation #wx pnp.tmp /= #1024 pnp.tmp
scoreboard players operation #gp pnp.tmp = #wx pnp.tmp
function pnp:gateway/boss/spawn
playsound minecraft:entity.wither.spawn hostile @a[distance=..48] ~ ~ ~ 0.6 1
particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1
title @a[distance=..48,tag=pnp.in_board] title {translate:"pnp.card.wither.name",fallback:"Wither",color:"dark_gray"}
title @a[distance=..48,tag=pnp.in_board] subtitle {translate:"pnp.nether.wither_arrives",fallback:"has appeared on your table",color:"gray"}
