scoreboard players set @s pnp.bsp 0
particle minecraft:flame ~ ~0.5 ~ 2 0.2 2 0.05 60
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.7
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.wildfire_nova",fallback:"The Wildfire bursts into a fire nova!",color:"gold"}
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..48,tag=!pnp.firesafe,tag=!pnp.tal.blaze_charm,tag=!pnp.ench_fp] if score @s pnp.fid = #bfid pnp.tmp at @s run function pnp:boss/burn_hit
