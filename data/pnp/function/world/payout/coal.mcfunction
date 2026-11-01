scoreboard players remove @s pnp.acc.coal 8
function pnp:world/deliver {card:"coal"}
execute if score @s pnp.acc.coal matches 8.. run function pnp:world/payout/coal
