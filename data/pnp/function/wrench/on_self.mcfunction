kill @e[type=item_display,tag=pnp.fxpause,distance=..12]
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set @s pnp.tool 1
scoreboard players set @s pnp.ph 0
function pnp:board/hover/clear
function pnp:board/tooltip/hide
scoreboard players set @s pnp.tips 0
execute anchored eyes positioned ^ ^ ^1.1 run summon item_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.fxtrig","pnp.fx_new"],Glowing:1b,glow_color_override:16711934,billboard:"center",teleport_duration:1,brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/trigger"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
scoreboard players operation @e[tag=pnp.fx_new] pnp.pid = #me pnp.tmp
tag @e[tag=pnp.fx_new] remove pnp.fx_new
playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.5 1.6
title @s actionbar {translate:"pnp.wrench.wrench_out_right_click_two_ports",fallback:"Wrench out: right-click two ports to link them, or left-click a port to cut its link. Right-click the Wrench again to put it away.",color:"yellow"}
