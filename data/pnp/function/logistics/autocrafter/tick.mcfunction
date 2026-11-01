execute if data entity @s item.components."minecraft:custom_data".hb[0] run function pnp:logistics/pump/hopper
execute if score @s pnp.acprog matches 1.. run return run function pnp:logistics/autocrafter/step
execute if data entity @s item.components."minecraft:custom_data".hb[3] run return 0
data modify storage pnp:board acr set from entity @s item.components."minecraft:custom_data".ar
data modify storage pnp:board acb set from entity @s item.components."minecraft:custom_data".ab
execute if data storage pnp:board acr.ids[0] unless function pnp:logistics/autocrafter/has_0 run return 0
execute if data storage pnp:board acr.ids[1] unless function pnp:logistics/autocrafter/has_1 run return 0
execute if data storage pnp:board acr.ids[2] unless function pnp:logistics/autocrafter/has_2 run return 0
execute if data storage pnp:board acr.ids[3] unless function pnp:logistics/autocrafter/has_3 run return 0
function pnp:logistics/autocrafter/start
