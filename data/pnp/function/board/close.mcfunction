function pnp:hud/hide
execute if score @s pnp.sls matches 2 run function pnp:selection/cancel
scoreboard players set @s pnp.sls 0
scoreboard players operation #me pnp.tmp = @s pnp.pid
function pnp:selection/box/remove
scoreboard players set @s pnp.ow 0
scoreboard players set @s pnp.kbo 0
execute if score @s pnp.rnu matches 1.. run function pnp:villager/rename/clear
scoreboard players set @s pnp.pslk 0
execute if score @s pnp.gws matches 1.. run function pnp:gateway/finish {r:2}
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players operation #hsid pnp.tmp = @s pnp.holding
execute if score @s pnp.holding matches 1.. as @e[type=marker,tag=pnp.cursor] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.01 ~ run function pnp:board/drop/free
function pnp:board/hover/clear
ride @s dismount
execute as @e[tag=pnp.board_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
execute if score @s pnp.memo matches 1.. run function pnp:revive_menu/close
execute if score @s pnp.tool matches 1 run function pnp:wrench/off
tag @s remove pnp.in_board
scoreboard players set @s pnp.book -1
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.holding 0
title @s actionbar ""
function pnp:board/return/go
playsound minecraft:item.book.put master @s ~ ~ ~ 1 1
scoreboard players set @s pnp.visit 0
execute at @s if dimension pnp:board in minecraft:overworld positioned 0 0 0 positioned over motion_blocking_no_leaves run tp @s ~0.5 ~ ~0.5
function pnp:tutorial/hide_self
scoreboard players reset @s pnp.gwj
scoreboard players set @s pnp.paint 0
scoreboard players set @s pnp.pcs 0
execute at @s unless dimension pnp:board run function pnp:inventory/restore
execute at @s unless dimension pnp:board run function pnp:delivery/arrive
function pnp:music/stop
