playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..32] ~ ~ ~ 1 1
particle minecraft:squid_ink ~ ~0.4 ~ 0.4 0.2 0.4 0.05 30
execute as @e[type=item_display,tag=pnp.k.unit,distance=..16] at @s run function pnp:gateway/blind/unit
execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute as @a if score @s pnp.pid = #own pnp.tmp run function pnp:gateway/blind/player
execute as @a if score @s pnp.gwj = #own pnp.tmp run function pnp:gateway/blind/player
