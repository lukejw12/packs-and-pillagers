scoreboard players set @s pnp.bsp 0
particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~0.3 ~ 2.5 0.1 2.5 0 80
playsound minecraft:entity.iron_golem.attack hostile @a[distance=..32] ~ ~ ~ 1 0.6
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.monstrosity_shock",fallback:"The Monstrosity slams out a redstone shockwave!",color:"red"}
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..48] if score @s pnp.fid = #bfid pnp.tmp at @s run function pnp:boss/shock_hit
