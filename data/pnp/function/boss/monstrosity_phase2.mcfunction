tag @s add pnp.bph2
scoreboard players add @s pnp.atk 2
function pnp:card/label/stats
playsound minecraft:block.beacon.power_select hostile @a[distance=..32] ~ ~ ~ 1 0.6
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.boss.monstrosity_phase2",fallback:"The Monstrosity overcharges! It hits harder now.",color:"red"}
