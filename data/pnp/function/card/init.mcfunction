scoreboard players operation @s pnp.uid = #uid pnp.ids
scoreboard players operation @s pnp.stack = #stack pnp.ids
scoreboard players set @s pnp.idx 0
scoreboard players set @s pnp.recipe 0
scoreboard players set @s pnp.timer 0
scoreboard players set @s pnp.pop 0
scoreboard players set @s pnp.target 0
$scoreboard players set @s pnp.hp $(hp)
$scoreboard players set @s pnp.atk $(atk)
tag @s remove pnp.card_new
execute if score @s pnp.hp matches 1.. run function pnp:card/label/add
function pnp:card/label/sell
