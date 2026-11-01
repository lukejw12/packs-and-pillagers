execute if score @s pnp.sslot matches 1.. if function pnp:villager/drop_on_slot run return 0
execute if score @s pnp.hover matches ..0 as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s unless block ~ 64 ~ #pnp:felt run return run function pnp:board/size/show_edge_message
scoreboard players operation #hsid pnp.tmp = @s pnp.holding
tag @s add pnp.dropper
scoreboard players set #route pnp.tmp 0
execute if function pnp:quest_board/route run scoreboard players set #route pnp.tmp 2
execute if score @s pnp.hover matches 1.. run function pnp:board/drop/route
tag @e[type=item_display,tag=pnp.dt] remove pnp.dt
execute if score #route pnp.tmp matches 0 if score @s pnp.hover matches 1.. run function pnp:board/drop/onto
execute if score #route pnp.tmp matches 0 if score @s pnp.hover matches ..0 as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s if entity @e[type=marker,tag=pnp.fight,distance=..12] run function pnp:fight_box/drop_box
execute if score #route pnp.tmp matches 0 if score @s pnp.hover matches ..0 if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}] as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s align xz positioned ~0.5 65.01 ~0.5 run function pnp:grid/drop
execute if score #route pnp.tmp matches 0 if score @s pnp.hover matches ..0 unless items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{grid:1b}}] as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.01 ~ run function pnp:board/drop/free
execute if score #route pnp.tmp matches 2 as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s positioned ~ 65.01 ~ run function pnp:board/drop/free
tag @s remove pnp.dropper
scoreboard players set @s pnp.holding 0
function pnp:board/hover/clear
scoreboard players set @s pnp.hover -1
playsound minecraft:block.wool.place master @s ~ ~ ~ 0.8 1.4
