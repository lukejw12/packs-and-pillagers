give @s minecraft:carrot_on_a_stick[minecraft:custom_data={pnp:{leaf:1b}},minecraft:item_model="pnp:table_leaf",minecraft:item_name={text:"Table Leaf",color:"gold"},minecraft:lore=[{text:"Right-click to add a ring to your card table.",color:"gray",italic:false}],!minecraft:max_damage,minecraft:max_stack_size=16]
tellraw @s [{text:"You found a ",color:"gray"},{text:"Table Leaf",color:"gold"},{text:" tucked away in the chest!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.6
