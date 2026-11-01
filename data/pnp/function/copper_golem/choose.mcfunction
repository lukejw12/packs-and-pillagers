data modify storage pnp:board cg.c set from entity @s item.components."minecraft:custom_data".cgc
scoreboard players set @s pnp.cgb 0
function pnp:copper_golem/choose_barrel with storage pnp:board cg
execute if score @s pnp.cgb matches 1.. run return run scoreboard players set @s pnp.cgs 2
function pnp:copper_golem/sort_home
