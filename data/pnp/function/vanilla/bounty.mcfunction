scoreboard players remove @s pnp.vkill 24
function pnp:world/deliver {card:"emerald"}
execute if score @s pnp.vkill matches 24.. run function pnp:vanilla/bounty
