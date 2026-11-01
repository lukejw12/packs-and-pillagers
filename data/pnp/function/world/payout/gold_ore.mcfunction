scoreboard players remove @s pnp.acc.gold_ore 6
function pnp:world/deliver {card:"gold_ore"}
execute if score @s pnp.acc.gold_ore matches 6.. run function pnp:world/payout/gold_ore
