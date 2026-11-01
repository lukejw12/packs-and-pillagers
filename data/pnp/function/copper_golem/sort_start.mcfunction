scoreboard players set #gex pnp.tmp -1
function pnp:copper_golem/home with storage pnp:board cg
execute unless score #hs pnp.tmp matches 1.. run return fail
scoreboard players operation #gh pnp.tmp = #hs pnp.tmp
scoreboard players set #gm pnp.tmp 1
function pnp:copper_golem/find with storage pnp:board cg
execute unless score #sfu pnp.tmp matches 1.. run return fail
data modify entity @s item.components."minecraft:custom_data".cgc set from storage pnp:board cg.c
scoreboard players operation @s pnp.cgu = #sfu pnp.tmp
scoreboard players operation @s pnp.cgh = #hs pnp.tmp
scoreboard players set @s pnp.cgm 1
scoreboard players set @s pnp.cgn 0
scoreboard players set @s pnp.cgs 1
data merge entity @s {teleport_duration:2}
return 1
