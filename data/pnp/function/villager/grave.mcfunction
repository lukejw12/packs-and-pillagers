execute store result score #own pnp.tmp run data get entity @s Pos[0]
scoreboard players add #own pnp.tmp 64
scoreboard players operation #own pnp.tmp /= #1024 pnp.tmp
data modify storage pnp:board gr set value {n:"A villager",c:"Lost",d:1}
data modify storage pnp:board gr.n set from entity @s item.components."minecraft:custom_data".vname
data modify storage pnp:board gr.c set from storage pnp:board cause
execute in minecraft:overworld store result score #dd pnp.tmp run time query time
scoreboard players operation #dd pnp.tmp /= #24000 pnp.tmp
scoreboard players add #dd pnp.tmp 1
execute store result storage pnp:board gr.d int 1 run scoreboard players get #dd pnp.tmp
execute store result storage pnp:board gr.p int 1 run scoreboard players get #own pnp.tmp
function pnp:villager/grave_for_card with storage pnp:board gr
