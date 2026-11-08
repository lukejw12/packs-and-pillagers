function pnp:progression/pack_roll
execute unless data storage pnp:board pkr run return 0
execute store result score #kp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #kp pnp.tmp 64
scoreboard players operation #kp pnp.tmp /= #1024 pnp.tmp
data modify storage pnp:board pkq.c set from storage pnp:board pkr
execute store result storage pnp:board pkq.p int 1 run scoreboard players get #kp pnp.tmp
execute store result score #pkn pnp.tmp run function pnp:progression/pack_known with storage pnp:board pkq
execute if score #pkn pnp.tmp matches 1 run function pnp:progression/pack_roll
execute unless data storage pnp:board pkr run return 0
data modify storage pnp:board pkq.c set from storage pnp:board pkr
function pnp:progression/pack_pop with storage pnp:board pkq
