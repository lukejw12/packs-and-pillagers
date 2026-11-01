scoreboard players set #ox pnp.tmp 0
scoreboard players set #oz pnp.tmp 0
execute store result score #px pnp.tmp run data get entity @s Pos[0] 1000
execute store result score #pz pnp.tmp run data get entity @s Pos[2] 1000
function pnp:wrench/port/offset with entity @s item.components."minecraft:custom_data"
scoreboard players operation #px pnp.tmp += #ox pnp.tmp
scoreboard players operation #pz pnp.tmp += #oz pnp.tmp
