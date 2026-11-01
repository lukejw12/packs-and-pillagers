scoreboard players remove @s pnp.acc.iron_ore 6
function pnp:world/deliver {card:"iron_ore"}
execute if score @s pnp.acc.iron_ore matches 6.. run function pnp:world/payout/iron_ore
