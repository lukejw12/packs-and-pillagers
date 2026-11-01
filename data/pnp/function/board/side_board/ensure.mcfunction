execute if score @s pnp.sbsz matches 12.. unless score @s pnp.sbv matches 1.. run scoreboard players set @s pnp.sbv 1
execute if score @s pnp.sbsz matches 12.. run return 0
function pnp:board/plot/get_coords
function pnp:board/side_board/ensure_at_plot with storage pnp:board tmp
