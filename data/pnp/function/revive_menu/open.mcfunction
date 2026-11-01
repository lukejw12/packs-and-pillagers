execute if score @s pnp.holding matches 1.. run return 0
function pnp:board/hover/clear
function pnp:board/tooltip/hide
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.tips 0
scoreboard players operation @s pnp.memo = #uid pnp.tmp
execute on vehicle at @s positioned ~ 65.42 ~ run function pnp:revive_menu/place
function pnp:revive_menu/render
function pnp:board/glide/stop
execute as @e[type=item_display,tag=pnp.memo_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s if block ~ 64 ~3.4 #pnp:felt run summon marker ~ 69 ~3.4 {Tags:["pnp.board_ent","pnp.glide","pnp.glide_new"]}
scoreboard players operation @e[type=marker,tag=pnp.glide_new] pnp.pid = #me pnp.tmp
tag @e[type=marker,tag=pnp.glide_new] remove pnp.glide_new
rotate @s 180 52
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.2
title @s actionbar {text:"Pick a villager to bring back. Click off the scroll to close.",color:"gray"}
