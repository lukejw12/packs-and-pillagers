execute store result storage pnp:board lb.q int 1 run data get entity @s item.components."minecraft:custom_data".fq
execute store result storage pnp:board lb.f int 1 run scoreboard players get @s pnp.ffuel
function pnp:logistics/label/furnace_with_queue with storage pnp:board lb
