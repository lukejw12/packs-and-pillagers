execute if data storage pnp:board acr.ids[0] run function pnp:logistics/autocrafter/use {i:0}
execute if data storage pnp:board acr.ids[1] run function pnp:logistics/autocrafter/use {i:1}
execute if data storage pnp:board acr.ids[2] run function pnp:logistics/autocrafter/use {i:2}
execute if data storage pnp:board acr.ids[3] run function pnp:logistics/autocrafter/use {i:3}
data modify entity @s item.components."minecraft:custom_data".ab set from storage pnp:board acb
execute store result score @s pnp.acprog run data get storage pnp:board acr.t
playsound minecraft:block.crafter.craft block @a[distance=..24] ~ ~ ~ 0.6 0.9
function pnp:logistics/label/update
