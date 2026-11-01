execute if score @s pnp.holding matches 1.. run return 0
function pnp:board/hover/clear
function pnp:board/tooltip/hide
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.tips 0
execute on vehicle at @s positioned ~ 65.42 ~ run function pnp:book/place
scoreboard players set @s pnp.book 0
scoreboard players set @s pnp.bdet 0
scoreboard players set @s pnp.bset 1
scoreboard players set @s pnp.pcat 0
tag @s add pnp.pd_open
scoreboard players operation @s pnp.blast = #blast1 pnp.tmp
function pnp:book/render
function pnp:board/glide/stop
execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s if block ~ 64 ~3.4 #pnp:felt run summon marker ~ 69 ~3.4 {Tags:["pnp.board_ent","pnp.glide","pnp.glide_new"]}
scoreboard players operation @e[type=marker,tag=pnp.glide_new] pnp.pid = #me pnp.tmp
tag @e[type=marker,tag=pnp.glide_new] remove pnp.glide_new
rotate @s 180 52
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
