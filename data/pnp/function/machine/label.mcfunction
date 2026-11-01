scoreboard players set #mq pnp.tmp 0
scoreboard players set #mo pnp.tmp 0
execute store result score #mq pnp.tmp run data get entity @s item.components."minecraft:custom_data".mq
execute store result score #mo pnp.tmp run data get entity @s item.components."minecraft:custom_data".mo
scoreboard players operation #mq pnp.tmp += #mo pnp.tmp
execute if score #mq pnp.tmp matches 0 run return run function pnp:logistics/label/empty
execute store result storage pnp:board lb.n int 1 run scoreboard players get #mq pnp.tmp
data modify storage pnp:board lb.c set from entity @s item.components."minecraft:custom_data".mo[0]
execute if data entity @s item.components."minecraft:custom_data".mq[0] run data modify storage pnp:board lb.c set from entity @s item.components."minecraft:custom_data".mq[0]
function pnp:logistics/label/set with storage pnp:board lb
