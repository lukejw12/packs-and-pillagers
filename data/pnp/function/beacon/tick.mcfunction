execute store result score #bp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #bp pnp.tmp 64
scoreboard players operation #bp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:beacon w.p int 1 run scoreboard players get #bp pnp.tmp
execute unless data entity @s item.components."minecraft:custom_data".bf run return run function pnp:beacon/off
execute if score @s pnp.bleft matches 1.. run scoreboard players remove @s pnp.bleft 1
execute unless score @s pnp.bleft matches 1.. run function pnp:beacon/refuel
execute unless score @s pnp.btier matches 1.. run return run function pnp:beacon/off
function pnp:beacon/apply
particle minecraft:end_rod ~ ~1.2 ~ 0.02 1 0.02 0 4
