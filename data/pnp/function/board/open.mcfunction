scoreboard players set #dim pnp.tmp 0
execute in pnp:board run scoreboard players set #dim pnp.tmp 1
execute if score #dim pnp.tmp matches 0 run return run tellraw @s {text:"The card board dimension isn't loaded. Restart the world or server once after adding the datapack.",color:"red"}
execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {text:"Your board is still being set up, try again in a moment.",color:"yellow"}
function pnp:board/return/save
function pnp:board/plot/get_coords
function pnp:board/plot/forceload with storage pnp:board tmp
function pnp:board/try_open with storage pnp:board tmp
