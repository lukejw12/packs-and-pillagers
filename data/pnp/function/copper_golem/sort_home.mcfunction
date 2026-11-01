data modify storage pnp:board cg.c set from entity @s item.components."minecraft:custom_data".cgc
scoreboard players set #hok pnp.tmp 0
execute if score @s pnp.cgm matches 1 if score @s pnp.cgh matches 1.. run function pnp:copper_golem/home_valid with storage pnp:board cg
execute if score #hok pnp.tmp matches 1 run return run scoreboard players set @s pnp.cgs 3
scoreboard players operation #gex pnp.tmp = @s pnp.cgr
function pnp:copper_golem/home with storage pnp:board cg
scoreboard players set #gex pnp.tmp -1
execute unless score #hs pnp.tmp matches 1.. run return run function pnp:copper_golem/drop_stack
scoreboard players operation @s pnp.cgh = #hs pnp.tmp
scoreboard players set @s pnp.cgm 1
scoreboard players set @s pnp.cgs 3
