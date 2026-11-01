data modify entity @s item.components."minecraft:custom_data".prof set from storage pnp:board capprof
execute store result score @s pnp.vlvl run data get storage pnp:board caplvl
execute unless score @s pnp.vlvl matches 1.. run scoreboard players set @s pnp.vlvl 1
execute if score @s pnp.vlvl matches 2 run scoreboard players set @s pnp.vxp 10
execute if score @s pnp.vlvl matches 3 run scoreboard players set @s pnp.vxp 30
execute if score @s pnp.vlvl matches 4 run scoreboard players set @s pnp.vxp 70
execute if score @s pnp.vlvl matches 5.. run scoreboard players set @s pnp.vxp 150
function pnp:villager/recalculate
