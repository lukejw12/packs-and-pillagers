tag @s add pnp.bph2
playsound minecraft:entity.wither.ambient hostile @a[distance=..32] ~ ~ ~ 1 0.7
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.wither_phase2",fallback:"The Wither calls up its skeletons!",color:"dark_gray"}
execute positioned ~-1.6 ~ ~0.8 run function pnp:card/spawn {card:"wither_skeleton"}
execute positioned ~1.6 ~ ~0.8 run function pnp:card/spawn {card:"wither_skeleton"}
