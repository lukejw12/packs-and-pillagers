scoreboard players remove @s pnp.acc.cobblestone 64
function pnp:world/deliver {card:"cobblestone"}
execute if score @s pnp.acc.cobblestone matches 64.. run function pnp:world/payout/cobblestone
