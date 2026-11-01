scoreboard players set @s pnp.wsn 3
execute store result storage pnp:board wt.p int 1 run scoreboard players get @s pnp.pid
execute as @e[type=item_display,tag=pnp.c.waypoint,distance=..64] if score @s pnp.uid = #uid pnp.tmp run data modify storage pnp:board wt.w set from entity @s item.components."minecraft:custom_data".wp
execute unless data storage pnp:board wt.w.d run return 0
execute store result score #wy pnp.tmp run data get storage pnp:board wt.w.y
execute unless data storage pnp:board wt.w.a run scoreboard players add #wy pnp.tmp 1
execute store result storage pnp:board wt.y int 1 run scoreboard players get #wy pnp.tmp
data modify storage pnp:board wt.d set from storage pnp:board wt.w.d
data modify storage pnp:board wt.x set from storage pnp:board wt.w.x
data modify storage pnp:board wt.z set from storage pnp:board wt.w.z
data modify storage pnp:board wt.yaw set value 0f
data modify storage pnp:board wt.yaw set from storage pnp:board wt.w.yaw
function pnp:waystone/travel_to with storage pnp:board wt
data remove storage pnp:board wt
function pnp:board/close
