scoreboard players add #uid pnp.ids 1
scoreboard players add #stack pnp.ids 1
scoreboard players operation @s pnp.uid = #uid pnp.ids
scoreboard players operation @s pnp.stack = #stack pnp.ids
scoreboard players set @s pnp.idx 0
scoreboard players set @s pnp.recipe 0
scoreboard players set @s pnp.timer 0
scoreboard players set @s pnp.pop 0
scoreboard players set @s pnp.target 0
tag @s remove pnp.card_new
tag @s remove pnp.v2
