scoreboard players remove @s pnp.acc.pumpkin 8
function pnp:world/deliver {card:"pumpkin"}
execute if score @s pnp.acc.pumpkin matches 8.. run function pnp:world/payout/pumpkin
