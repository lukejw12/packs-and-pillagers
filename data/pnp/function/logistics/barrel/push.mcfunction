data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".bt
function pnp:route/send
execute if score #sent pnp.tmp matches 0 run return 0
scoreboard players remove @s pnp.bcount 1
function pnp:logistics/barrel/fix
