scoreboard players remove @s pnp.acc.copper_ore 6
function pnp:world/deliver {card:"copper_ore"}
execute if score @s pnp.acc.copper_ore matches 6.. run function pnp:world/payout/copper_ore
