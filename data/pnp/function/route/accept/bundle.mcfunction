$execute if data storage pnp:cards defs.$(c){give:""} run return fail
execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
execute as @a if score @s pnp.pid = #own pnp.tmp run return 1
return fail
