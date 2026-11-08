tag @s add pnp.bph2
scoreboard players set @s pnp.wsh 3
playsound minecraft:block.anvil.use hostile @a[distance=..32] ~ ~ ~ 0.6 1.6
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.wildfire_phase2",fallback:"The Wildfire's shields re-form!",color:"gold"}
