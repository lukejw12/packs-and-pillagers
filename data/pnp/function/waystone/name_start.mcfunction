execute if score @s pnp.rnu matches 1.. run function pnp:villager/rename/clear
scoreboard players set @s pnp.rnu 1
scoreboard players operation @s pnp.rnwid = #wnid pnp.tmp
scoreboard players set @s pnp.rnw 1
scoreboard players set @s pnp.rnt 0
scoreboard players reset @s pnp.rnx
give @s minecraft:writable_book[minecraft:custom_data={pnp:{namebook:1b}},minecraft:custom_name={translate:"pnp.common.name_tag",fallback:"Name Tag",italic:false,color:"aqua"},minecraft:lore=[{translate:"pnp.waystone.write_the_waystone_s_name_on",fallback:"Write the waystone's name on the",color:"gray",italic:false},{translate:"pnp.waystone.first_page_then_press_done",fallback:"first page, then press Done.",color:"gray",italic:false}]]
tellraw @s {translate:"pnp.waystone.want_to_name_it_open_the",fallback:"Want to name it? Open the Name Tag book, write a name on the first page and press Done. Drop the book to skip.",color:"gray"}
