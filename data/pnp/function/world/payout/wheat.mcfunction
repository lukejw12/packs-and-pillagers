scoreboard players remove @s pnp.acc.wheat 16
function pnp:world/deliver {card:"wheat"}
execute if score @s pnp.acc.wheat matches 16.. run function pnp:world/payout/wheat
