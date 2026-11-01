scoreboard players reset @s pnp.sbm
function pnp:board/plot/get_coords
data modify storage pnp:board sb.x0 set from storage pnp:board tmp.x
function pnp:board/side_board/fill_lock_at_plot with storage pnp:board sb
