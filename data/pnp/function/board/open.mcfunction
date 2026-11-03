scoreboard players set #dim pnp.tmp 0
execute in pnp:board run scoreboard players set #dim pnp.tmp 1
execute if score #dim pnp.tmp matches 0 run return run tellraw @s {translate:"pnp.board.the_card_board_dimension_isn_t",fallback:"The card board dimension isn't loaded yet. Restart the world or server once after adding the datapack.",color:"red"}
execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {translate:"pnp.board.your_board_is_still_being_set",fallback:"Your board is still being set up. Try again in a moment.",color:"yellow"}
function pnp:board/return/save
function pnp:board/plot/get_coords
function pnp:board/plot/forceload with storage pnp:board tmp
function pnp:board/try_open with storage pnp:board tmp
