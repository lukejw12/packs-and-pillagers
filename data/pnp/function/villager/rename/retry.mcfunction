clear @s minecraft:writable_book[minecraft:custom_data~{pnp:{namebook:1b}}]
clear @s minecraft:written_book[minecraft:custom_data~{pnp:{namebook:1b}}]
item replace entity @s weapon.mainhand with minecraft:writable_book[minecraft:custom_data={pnp:{namebook:1b}},minecraft:custom_name={text:"Name Tag",italic:false,color:"aqua"},minecraft:lore=[{text:"Right-click, write a name, then press Done.",color:"gray",italic:false}]]
$title @s actionbar {text:"$(m)",color:"yellow"}
