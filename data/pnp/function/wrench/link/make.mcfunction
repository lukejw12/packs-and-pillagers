execute as @e[type=block_display,tag=pnp.link,distance=..64] if score @s pnp.lsrc = #su pnp.tmp if score @s pnp.lsp = #sp pnp.tmp run kill @s
execute as @e[type=block_display,tag=pnp.link,distance=..64] if score @s pnp.ldst = #du pnp.tmp if score @s pnp.ldp = #dp pnp.tmp at @s run function pnp:wrench/link/dead
execute as @e[type=item_display,tag=pnp.port,distance=..48] if score @s pnp.puid = #su pnp.tmp if score @s pnp.pnum = #sp pnp.tmp at @s run summon block_display ~ 65.004 ~ {Tags:["pnp.link","pnp.lk_new"],block_state:"minecraft:yellow_concrete",brightness:{sky:15,block:15},Glowing:1b,glow_color_override:16765514,teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.03f,0f,0f],scale:[0.06f,0.012f,1f]}}
scoreboard players operation @e[type=block_display,tag=pnp.lk_new] pnp.lsrc = #su pnp.tmp
scoreboard players operation @e[type=block_display,tag=pnp.lk_new] pnp.lsp = #sp pnp.tmp
scoreboard players operation @e[type=block_display,tag=pnp.lk_new] pnp.ldst = #du pnp.tmp
scoreboard players operation @e[type=block_display,tag=pnp.lk_new] pnp.ldp = #dp pnp.tmp
scoreboard players operation @e[type=block_display,tag=pnp.lk_new] pnp.pid = #me pnp.tmp
execute as @e[type=block_display,tag=pnp.lk_new] at @s run function pnp:wrench/link/update
tag @e[type=block_display,tag=pnp.lk_new] remove pnp.lk_new
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #su pnp.tmp at @s run function pnp:wrench/has_output
playsound minecraft:block.chain.place master @s ~ ~ ~ 0.8 1.2
title @s actionbar {translate:"pnp.wrench.linked",fallback:"Linked!",color:"green"}
