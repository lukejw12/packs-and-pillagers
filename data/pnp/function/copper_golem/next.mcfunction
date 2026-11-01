execute if score @s pnp.cgn matches 8.. run return run function pnp:copper_golem/choose
data modify storage pnp:board cg.c set from entity @s item.components."minecraft:custom_data".cgc
function pnp:copper_golem/choose_next
execute if score @s pnp.cgs matches 1 run return 0
execute if score @s pnp.cgn matches 1.. run return run function pnp:copper_golem/choose
scoreboard players set @s pnp.cgs 0
