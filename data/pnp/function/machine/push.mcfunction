data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".mo[0]
function pnp:route/send
execute if score #sent pnp.tmp matches 0 run return 0
data remove entity @s item.components."minecraft:custom_data".mo[0]
function pnp:logistics/label/update
