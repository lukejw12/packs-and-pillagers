execute unless dimension pnp:board run return run function pnp:board/lost_card
function pnp:hud/tick
scoreboard players set #riding pnp.tmp 0
execute on vehicle if entity @s[tag=pnp.camera] run scoreboard players set #riding pnp.tmp 1
execute if score #riding pnp.tmp matches 0 if score @s pnp.paint matches 1.. run return run function pnp:paint/shift_stop
execute if score #riding pnp.tmp matches 0 if score @s pnp.pslk matches 1 run return run function pnp:paint/shift_hold
execute if score #riding pnp.tmp matches 0 run return run function pnp:board/close
scoreboard players operation #me pnp.tmp = @s pnp.pid
execute if score @s pnp.pslk matches 1 unless predicate pnp:movement/sneak run scoreboard players set @s pnp.pslk 0
execute if score @s pnp.rnu matches 1.. run function pnp:villager/rename/tick
execute if score @s pnp.kbt matches 1.. run function pnp:controls/from_menu
execute unless score @s pnp.sanim matches 1.. run function pnp:board/pan
execute if entity @e[type=marker,tag=pnp.glide,distance=..64] run function pnp:board/glide/tick
function pnp:board/click_box
function pnp:board/raycast/start
function pnp:board/hover/update
execute unless score @s pnp.book matches 0.. unless score @s pnp.kbo matches 1 unless score @s pnp.memo matches 1.. unless score @s pnp.tool matches 1 run function pnp:villager/slots/tick
execute if score @s pnp.tool matches 1 run function pnp:wrench/tick
function pnp:board/tooltip/tick
function pnp:board/check_clicks
execute if score @s pnp.holding matches 1.. run function pnp:board/drag
execute if entity @s[tag=pnp.keys] run return run function pnp:debug/show_keys
scoreboard players add @s pnp.info 1
execute if score @s pnp.info matches 40.. run function pnp:board/hover/info
function pnp:multiplayer/head/tick
execute if score @s pnp.tut matches 1 if score @s pnp.holding matches 1.. run scoreboard players set @s pnp.tut 2
tag @s add pnp.pd_me
execute if entity @s[tag=pnp.pd_open] if score @s pnp.bset matches 1 run function pnp:cardopedia/hover
tag @s remove pnp.pd_me
execute if score #paused pnp.ids matches 1 at @s run function pnp:speed/pause_effect
