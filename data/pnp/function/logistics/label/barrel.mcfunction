execute unless score @s pnp.bcount matches 1.. run return run function pnp:logistics/label/empty
execute store result storage pnp:board lb.n int 1 run scoreboard players get @s pnp.bcount
data modify storage pnp:board lb.c set from entity @s item.components."minecraft:custom_data".bt
function pnp:logistics/label/set with storage pnp:board lb
