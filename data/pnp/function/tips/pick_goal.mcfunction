data modify storage pnp:board gl set value {g:"Raids keep coming. Grow the side board and find every card."}
execute if score @s pnp.rlvl matches ..10 run data modify storage pnp:board gl.g set value "Defeat the Illusioner in raid 10."
$execute unless data storage pnp:found p$(p).gate_trial run data modify storage pnp:board gl.g set value "Open a gateway and take your villagers on an expedition."
execute if score @s pnp.rlvl matches ..5 run data modify storage pnp:board gl.g set value "Win raid 5 and beat the first Evoker."
$execute unless data storage pnp:found p$(p).torch run data modify storage pnp:board gl.g set value "Light the table: make Torches from Coal and Sticks to keep monsters away."
$execute unless data storage pnp:found p$(p).iron_ingot run data modify storage pnp:board gl.g set value "Find iron: explore a Mountain, then smelt the ore in a Furnace."
execute if score @s pnp.msz matches ..29 run data modify storage pnp:board gl.g set value "Build a Shelf or Vault to make your table bigger."
$execute unless data storage pnp:found p$(p).house run data modify storage pnp:board gl.g set value "Grow the village: build a House, then breed villagers on it."
$execute unless data storage pnp:found p$(p).farm run data modify storage pnp:board gl.g set value "Grow food: learn the Farm idea and build one."
$execute unless data storage pnp:found p$(p).wooden_sword unless data storage pnp:found p$(p).stone_sword run data modify storage pnp:board gl.g set value "Arm a villager before night 2: make a sword on the Crafting Table and drop it on them."
$execute unless data storage pnp:found p$(p).crafting_table run data modify storage pnp:board gl.g set value "Make a Crafting Table: stack 2 Oak Logs on a Villager."
tellraw @s [{text:"",extra:[{translate:"pnp.tips.next_goal",fallback:"Next goal:"}," "],color:"gold"},{storage:"pnp:board",nbt:"gl.g",interpret:true,color:"white"}]
