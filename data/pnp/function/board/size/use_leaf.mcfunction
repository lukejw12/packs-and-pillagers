scoreboard players set @s pnp.use 0
execute if score @s pnp.plot matches 3 run return run function pnp:coop/leaf
execute unless score @s pnp.plot matches 2 run return run title @s actionbar {text:"Open your Card Board once first.",color:"gray"}

tag @s add pnp.leafpay
function pnp:board/side_board/grow
tag @s remove pnp.leafpay
