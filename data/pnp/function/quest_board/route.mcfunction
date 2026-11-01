scoreboard players set #qon pnp.tmp 0
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp at @s if block ~ 64 ~ minecraft:brown_wool run scoreboard players set #qon pnp.tmp 1
execute if score #qon pnp.tmp matches 0 run return fail
execute store result storage pnp:board qdv.p int 1 run scoreboard players get @s pnp.tpid
scoreboard players set #qgot pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:quest_board/deliver_one
execute if score #qgot pnp.tmp matches 0 run title @s actionbar {translate:"pnp.quest_board.the_quest_book_doesn_t_need",fallback:"The Quest Book doesn't need that right now.",color:"yellow"}
execute if score #qgot pnp.tmp matches 0 run return fail
title @s actionbar [{text:"",extra:[{translate:"pnp.quest_board.handed_in",fallback:"Handed in"}," "],color:"green"},{score:{name:"#qgot",objective:"pnp.tmp"},color:"white"},{text:" ",extra:[{translate:"pnp.quest_board.to_the_quest_book",fallback:"to the Quest Book."}],color:"green"}]
playsound minecraft:entity.villager.yes master @s ~ ~ ~ 0.7 1.1
return 1
