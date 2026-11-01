scoreboard players set #rk pnp.tmp 0
scoreboard players operation #ms pnp.tmp = @s pnp.fslot
scoreboard players operation #sd pnp.tmp = @s pnp.fside
execute as @e[type=item_display,tag=pnp.infight,distance=..14] if score @s pnp.fid = #fid pnp.tmp if score @s pnp.fside = #sd pnp.tmp if score @s pnp.fslot < #ms pnp.tmp run scoreboard players add #rk pnp.tmp 1
scoreboard players operation #n1 pnp.tmp = #nu pnp.tmp
execute if score #sd pnp.tmp matches 2 run scoreboard players operation #n1 pnp.tmp = #ne pnp.tmp
scoreboard players remove #n1 pnp.tmp 1
scoreboard players operation #px pnp.tmp = #rk pnp.tmp
scoreboard players operation #px pnp.tmp *= #40 pnp.tmp
scoreboard players operation #n1 pnp.tmp *= #20 pnp.tmp
scoreboard players operation #px pnp.tmp -= #n1 pnp.tmp
execute store result storage pnp:board fpl.x double 0.03125 run scoreboard players get #px pnp.tmp
data modify storage pnp:board fpl.z set value 1.0d
execute if score #sd pnp.tmp matches 2 run data modify storage pnp:board fpl.z set value -1.0d
function pnp:fight_box/place_at with storage pnp:board fpl
