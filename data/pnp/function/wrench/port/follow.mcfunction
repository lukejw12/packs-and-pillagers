scoreboard players operation #pu pnp.tmp = @s pnp.puid
scoreboard players operation #pn pnp.tmp = @s pnp.pnum
scoreboard players set #fa pnp.tmp 0
execute at @s as @e[type=item_display,tag=pnp.card,distance=..6] if score @s pnp.uid = #pu pnp.tmp run function pnp:wrench/port/position_a
execute if score #fa pnp.tmp matches 0 run return run kill @s
execute store result storage pnp:board pf.x double 0.001 run scoreboard players get #ax pnp.tmp
execute store result storage pnp:board pf.z double 0.001 run scoreboard players get #az pnp.tmp
function pnp:wrench/port/teleport with storage pnp:board pf
