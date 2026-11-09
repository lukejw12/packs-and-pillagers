$scoreboard players set #qu pnp.tmp $(m)
scoreboard players set #que pnp.tmp 18
execute if score #qu pnp.tmp matches 19.. run scoreboard players set #que pnp.tmp 31
scoreboard players operation #qul pnp.tmp = #que pnp.tmp
scoreboard players operation #qul pnp.tmp -= #qu pnp.tmp
execute if score #qul pnp.tmp matches 1.. run data modify storage pnp:board qbs append value {text:"\n"}
execute if score #qul pnp.tmp matches 1.. run data modify storage pnp:board qbs append value {text:"",extra:[{translate:"pnp.quest_board.next_main",fallback:"Next main quests"},"\n"],color:"#6b5a48",bold:true}
execute if score #qul pnp.tmp matches 1.. run function pnp:quest_board/upnext_one
execute if score #qul pnp.tmp matches 2.. run function pnp:quest_board/upnext_one
