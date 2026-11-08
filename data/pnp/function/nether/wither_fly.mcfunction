execute if entity @s[tag=pnp.wranged] run return 0
tag @s add pnp.wranged
tag @s add pnp.ranged
particle minecraft:soul_fire_flame ~ ~0.4 ~ 0.4 0.2 0.4 0.03 25
playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.7 1
title @a[distance=..32,tag=pnp.in_board] actionbar {translate:"pnp.nether.wither_flies",fallback:"The Wither takes to the air. Only ranged attacks can reach it.",color:"dark_aqua"}
scoreboard players operation #bf pnp.tmp = @s pnp.fid
data modify storage pnp:board cause set value "Wither skulls"
scoreboard players set #atk pnp.tmp 2
tag @s add pnp.atkr
execute as @e[type=item_display,tag=pnp.k.unit,tag=pnp.infight,distance=..14] if score @s pnp.fid = #bf pnp.tmp at @s run function pnp:fight/hit
tag @s remove pnp.atkr
