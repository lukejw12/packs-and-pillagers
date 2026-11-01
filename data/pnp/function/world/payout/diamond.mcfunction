scoreboard players remove @s pnp.acc.diamond 4
function pnp:world/deliver {card:"diamond"}
execute if score @s pnp.acc.diamond matches 4.. run function pnp:world/payout/diamond
