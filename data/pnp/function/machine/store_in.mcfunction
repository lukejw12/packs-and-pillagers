data modify entity @s item.components."minecraft:custom_data".mq append from storage pnp:machine in.c
data modify storage pnp:machine io.c set from storage pnp:machine in.c
function pnp:machine/call {f:"on_input"}
function pnp:logistics/label/update
