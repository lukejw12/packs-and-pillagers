execute unless data entity @s item.components."minecraft:custom_data".cv run data modify entity @s item.components."minecraft:custom_data".cv set value 1
tag @s add pnp.cheat
function pnp:nether/eat_charred_v with entity @s item.components."minecraft:custom_data"
tag @s remove pnp.cheat
scoreboard players set #chate pnp.tmp 1
