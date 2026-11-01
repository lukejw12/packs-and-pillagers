scoreboard players operation #me pnp.tmp = @s pnp.pid
execute if score @s pnp.holding matches 1.. run return 0
execute if score @s pnp.book matches 0.. run function pnp:book/close
execute as @e[tag=pnp.kb_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
function pnp:board/hover/clear
function pnp:board/tooltip/hide
scoreboard players set @s pnp.hover 0
execute on vehicle at @s positioned ~ 65.42 ~ run function pnp:controls/place
scoreboard players set @s pnp.kbo 1
function pnp:board/glide/stop
execute as @e[type=block_display,tag=pnp.kb_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s if block ~ 64 ~3.4 #pnp:felt run summon marker ~ 69 ~3.4 {Tags:["pnp.board_ent","pnp.glide","pnp.glide_new"]}
scoreboard players operation @e[type=marker,tag=pnp.glide_new] pnp.pid = #me pnp.tmp
tag @e[type=marker,tag=pnp.glide_new] remove pnp.glide_new
rotate @s 180 52
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 1.2
