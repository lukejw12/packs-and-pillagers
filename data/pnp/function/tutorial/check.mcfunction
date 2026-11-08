$execute if score @s pnp.tut matches 2 if data storage pnp:found p$(t).sweet_berries run scoreboard players set @s pnp.tut 3
$execute if score @s pnp.tut matches 3 if data storage pnp:found p$(t).oak_log run scoreboard players set @s pnp.tut 4
$execute if score @s pnp.tut matches 4 if data storage pnp:found p$(t).crafting_table run scoreboard players set @s pnp.tut 5
$execute if score @s pnp.tut matches 5 if data storage pnp:found p$(t).planks run scoreboard players set @s pnp.tut 6
$execute if score @s pnp.tut matches 6 if data storage pnp:found p$(t).stick run scoreboard players set @s pnp.tut 7
$execute if score @s pnp.tut matches 7 if data storage pnp:found p$(t).cobblestone run scoreboard players set @s pnp.tut 8
$execute if score @s pnp.tut matches 8 if data storage pnp:found p$(t).stone_pickaxe run scoreboard players set @s pnp.tut 9
$execute if score @s pnp.tut matches 9 unless data storage pnp:qb p$(t){m:0} run scoreboard players set @s pnp.tut 10
