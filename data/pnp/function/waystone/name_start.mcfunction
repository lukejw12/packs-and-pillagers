execute if score @s pnp.rnu matches 1.. run function pnp:villager/rename/clear
scoreboard players set @s pnp.rnu 1
scoreboard players operation @s pnp.rnwid = #wnid pnp.tmp
scoreboard players set @s pnp.rnw 1
scoreboard players set @s pnp.rnt 0
scoreboard players reset @s pnp.rnx
give @s minecraft:writable_book[minecraft:custom_data={pnp:{namebook:1b}},minecraft:custom_name={text:"Name Tag",italic:false,color:"aqua"},minecraft:lore=[{text:"Write the waystone's name on the",color:"gray",italic:false},{text:"first page, then press Done.",color:"gray",italic:false}]]
tellraw @s {text:"Want to name it? Open the Name Tag book, write a name on the first page and press Done. Drop the book to skip.",color:"gray"}
