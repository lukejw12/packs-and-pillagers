clear @s minecraft:writable_book[minecraft:custom_data~{pnp:{namebook:1b}}]
clear @s minecraft:written_book[minecraft:custom_data~{pnp:{namebook:1b}}]
item replace entity @s weapon.mainhand with minecraft:writable_book[minecraft:custom_data={pnp:{namebook:1b}},minecraft:custom_name={translate:"pnp.common.name_tag",fallback:"Name Tag",italic:false,color:"aqua"},minecraft:lore=[{translate:"pnp.villager.right_click_write_a_name_then",fallback:"Right-click, write a name, then press Done.",color:"gray",italic:false}]]
$title @s actionbar {text:"$(m)",color:"yellow"}
