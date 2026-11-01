scoreboard players operation @s pnp.vlvl = #nl pnp.tmp
function pnp:villager/recalculate
execute at @s run particle minecraft:happy_villager ~ ~0.4 ~ 0.3 0.2 0.3 0 15
execute at @s run playsound minecraft:entity.villager.celebrate master @a[distance=..32] ~ ~ ~ 0.8 1
execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board lu.p int 1 run scoreboard players get #own pnp.tmp
execute store result storage pnp:board lu.l int 1 run scoreboard players get @s pnp.vlvl
data modify storage pnp:board lu.n set value "A villager"
data modify storage pnp:board lu.n set from entity @s item.components."minecraft:custom_data".vname
function pnp:villager/level/message with storage pnp:board lu
