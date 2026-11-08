scoreboard players set #rhs pnp.tmp 0
scoreboard players operation #rst pnp.tmp = @s pnp.stack
execute as @e[type=item_display,tag=pnp.tal.horse,distance=..4] if score @s pnp.stack = #rst pnp.tmp run scoreboard players set #rhs pnp.tmp 1
execute if score #rhs pnp.tmp matches 0 run return 0
execute store result storage pnp:board rhw.r int 1 run scoreboard players get @s pnp.recipe
function pnp:progression/horse_speed_k with storage pnp:board rhw
