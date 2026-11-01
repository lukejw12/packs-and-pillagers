execute unless score @s pnp.vlvl matches 1.. run return 0
execute store result storage pnp:board tl.x int 1 run scoreboard players get @s pnp.vxp
execute store result storage pnp:board tl.l int 1 run scoreboard players get @s pnp.vlvl
function pnp:villager/tips/level_for_level with storage pnp:board tl
