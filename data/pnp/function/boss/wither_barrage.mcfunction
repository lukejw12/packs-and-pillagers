scoreboard players set @s pnp.bsp 0
playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.8 0.9
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.wither_barrage",fallback:"The Wither fires a barrage of skulls!",color:"dark_gray"}
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..48,sort=random,limit=3] if score @s pnp.fid = #bfid pnp.tmp at @s run function pnp:boss/skull_hit
