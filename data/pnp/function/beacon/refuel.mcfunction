scoreboard players set @s pnp.btier 0
execute store result score #bc pnp.tmp run function pnp:api/machine/count
execute if score #bc pnp.tmp matches 0 run return 0
function pnp:api/machine/take
execute if data storage pnp:machine io{c:"iron_ingot"} run scoreboard players set @s pnp.btier 1
execute if data storage pnp:machine io{c:"gold_ingot"} run scoreboard players set @s pnp.btier 2
execute if data storage pnp:machine io{c:"diamond"} run scoreboard players set @s pnp.btier 3
execute if data storage pnp:machine io{c:"netherite_ingot"} run scoreboard players set @s pnp.btier 4
scoreboard players set @s pnp.bleft 60
playsound minecraft:block.beacon.ambient block @a[distance=..24] ~ ~ ~ 0.5 1.2
