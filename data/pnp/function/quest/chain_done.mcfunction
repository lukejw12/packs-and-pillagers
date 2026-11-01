execute store result score #qdp pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qdp pnp.tmp 64
scoreboard players operation #qdp pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board qd.p int 1 run scoreboard players get #qdp pnp.tmp
data modify storage pnp:board qd.c set from entity @s item.components."minecraft:custom_data".card
function pnp:quest/chain_done_for_card with storage pnp:board qd
