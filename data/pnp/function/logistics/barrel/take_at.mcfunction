execute unless score @s pnp.bcount matches 1.. run return 0
scoreboard players set #take pnp.tmp 5
data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".bt
function pnp:logistics/barrel/take_loop
function pnp:logistics/barrel/fix
playsound minecraft:block.barrel.open block @a[distance=..24] ~ ~ ~ 0.8 1
