execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board kp.p int 1 run scoreboard players get #own pnp.tmp
function pnp:idea/known_for_player with storage pnp:board kp
