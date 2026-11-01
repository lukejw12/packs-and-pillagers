scoreboard players remove @s pnp.acc.oak_log 16
function pnp:world/deliver {card:"oak_log"}
execute if score @s pnp.acc.oak_log matches 16.. run function pnp:world/payout/oak_log
