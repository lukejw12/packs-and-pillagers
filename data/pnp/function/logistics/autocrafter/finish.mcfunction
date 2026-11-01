data modify storage pnp:board acr set from entity @s item.components."minecraft:custom_data".ar
execute if data storage pnp:board acr.out[0] run data modify entity @s item.components."minecraft:custom_data".hb append from storage pnp:board acr.out[0]
execute if data storage pnp:board acr.out[1] run data modify entity @s item.components."minecraft:custom_data".hb append from storage pnp:board acr.out[1]
execute if data storage pnp:board acr.out[2] run data modify entity @s item.components."minecraft:custom_data".hb append from storage pnp:board acr.out[2]
execute if data storage pnp:board acr.out[3] run data modify entity @s item.components."minecraft:custom_data".hb append from storage pnp:board acr.out[3]
playsound minecraft:block.crafter.craft block @a[distance=..24] ~ ~ ~ 0.7 1.3
particle minecraft:happy_villager ~ ~0.25 ~ 0.3 0.05 0.3 0 6
function pnp:logistics/label/update
