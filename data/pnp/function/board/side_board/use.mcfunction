execute if score @s pnp.sbsz matches 12.. run return run title @s actionbar {translate:"pnp.board.side_board.your_side_board_is_already_built",fallback:"Your side board is already built.",color:"gray"}
function pnp:board/side_board/build
execute as @e[type=item_display,tag=pnp.c.side_table,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:card/remove
