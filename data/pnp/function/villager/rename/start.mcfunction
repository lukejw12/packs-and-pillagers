execute if score @s pnp.rnu matches 1.. run function pnp:villager/rename/clear
scoreboard players operation @s pnp.rnu = #uid pnp.tmp
scoreboard players set @s pnp.rnt 0
data remove storage pnp:board rnv
execute as @e[type=item_display,tag=pnp.c.villager,distance=..64] if score @s pnp.uid = #uid pnp.tmp run data modify storage pnp:board rnv set from entity @s item.components."minecraft:custom_data".vname
item replace entity @s weapon.mainhand with minecraft:writable_book[minecraft:custom_data={pnp:{namebook:1b}},minecraft:custom_name={text:"Name Tag",italic:false,color:"aqua"},minecraft:lore=[{text:"Right-click, write a name, then press Done.",color:"gray",italic:false}]]
scoreboard players reset @s pnp.rnx
scoreboard players enable @s pnp.rnx
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.8 1.2
tellraw @s [{text:"Right-click to write a new name for ",color:"gray"},{storage:"pnp:board",nbt:"rnv",interpret:true,color:"white"},{text:", then press Done. ",color:"gray"},{text:"[Cancel]",color:"yellow",click_event:{action:"run_command",command:"/trigger pnp.rnx"}}]
