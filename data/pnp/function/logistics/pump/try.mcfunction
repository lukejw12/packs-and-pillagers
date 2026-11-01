$data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".hb[$(i)]
function pnp:route/send
execute if score #sent pnp.tmp matches 0 run return run scoreboard players add #pi pnp.tmp 1
$data remove entity @s item.components."minecraft:custom_data".hb[$(i)]
scoreboard players remove #pl pnp.tmp 1
scoreboard players remove #dn pnp.tmp 1
scoreboard players add #psent pnp.tmp 1
