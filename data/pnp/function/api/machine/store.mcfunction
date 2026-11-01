$data modify storage pnp:machine in.c set value "$(c)"
data modify entity @s item.components."minecraft:custom_data".mq append from storage pnp:machine in.c
function pnp:logistics/label/update
