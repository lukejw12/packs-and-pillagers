scoreboard players set @s pnp.cgs 0
scoreboard players operation #gh pnp.tmp = @s pnp.cgh
execute unless score @s pnp.cgm matches 1 run scoreboard players set #gh pnp.tmp -1
scoreboard players operation #gm pnp.tmp = @s pnp.cgm
function pnp:copper_golem/find with storage pnp:board cg
execute unless score #sfu pnp.tmp matches 1.. run return 0
scoreboard players operation @s pnp.cgu = #sfu pnp.tmp
scoreboard players set @s pnp.cgs 1
