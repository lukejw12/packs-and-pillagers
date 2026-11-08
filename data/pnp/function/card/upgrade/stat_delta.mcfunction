execute unless score @s pnp.hp matches 1.. run return 0
$scoreboard players add @s pnp.hp $(h)
$scoreboard players add @s pnp.atk $(a)
function pnp:card/label/stats
