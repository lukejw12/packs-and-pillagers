scoreboard players set @s pnp.use 0
execute if dimension pnp:board run return 0
execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {translate:"pnp.common.open_your_card_board_once_first",fallback:"Open your Card Board once first.",color:"gray"}
kill @e[type=marker,tag=pnp.wsm_new]
scoreboard players set #wr pnp.tmp 0
scoreboard players set #whit pnp.tmp 0
execute anchored eyes positioned ^ ^ ^ run function pnp:waystone/raycast
execute if score #whit pnp.tmp matches 0 run return run tellraw @s {translate:"pnp.waystone.look_at_a_block_within_reach",fallback:"Look at a block within reach to place a waystone.",color:"gray"}
execute if score #whit pnp.tmp matches 2 run return run tellraw @s {translate:"pnp.waystone.someone_is_standing_there_aim_somewhere",fallback:"Someone is standing there. Aim somewhere clear.",color:"gray"}
data modify storage pnp:board wp set value {a:1b}
scoreboard players add #wid pnp.ids 1
execute store result storage pnp:board wp.id int 1 run scoreboard players get #wid pnp.ids
data modify storage pnp:board wp.d set from entity @s Dimension
execute store result storage pnp:board wp.x int 1 run data get entity @e[type=marker,tag=pnp.wsb,limit=1] Pos[0]
execute store result score #wby pnp.tmp run data get entity @e[type=marker,tag=pnp.wsb,limit=1] Pos[1]
scoreboard players add #wby pnp.tmp 1
execute store result storage pnp:board wp.y int 1 run scoreboard players get #wby pnp.tmp
execute store result storage pnp:board wp.z int 1 run data get entity @e[type=marker,tag=pnp.wsb,limit=1] Pos[2]
kill @e[type=marker,tag=pnp.wsb]
data modify storage pnp:board wp.yaw set from entity @s Rotation[0]
execute as @e[type=marker,tag=pnp.wsm_new,limit=1] at @s run setblock ~ ~ ~ minecraft:lodestone replace
scoreboard players operation @e[type=marker,tag=pnp.wsm_new] pnp.wid = #wid pnp.ids
execute as @e[type=marker,tag=pnp.wsm_new,limit=1] at @s run function pnp:waystone/add_interaction
execute at @e[type=marker,tag=pnp.wsm_new,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.3 0.4 0.3 0.02 30
execute at @e[type=marker,tag=pnp.wsm_new,limit=1] run playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..16] ~ ~ ~ 0.8 1.2
tag @e[type=marker,tag=pnp.wsm_new] remove pnp.wsm_new
function pnp:world/deliver {card:"waypoint"}
execute in pnp:board as @e[type=item_display,tag=pnp.c.waypoint] if score @s pnp.uid = #uid pnp.ids run function pnp:waystone/bind with storage pnp:board wp
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{waystone:1b}}] 1
tellraw @s {translate:"pnp.waystone.waystone_placed_it_s_on_your",fallback:"Waystone placed. It's on your card table now, so right-click it there to come back here.",color:"aqua"}
scoreboard players operation #wnid pnp.tmp = #wid pnp.ids
function pnp:waystone/name_start
