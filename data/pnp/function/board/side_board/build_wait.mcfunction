scoreboard players remove @s pnp.sbw 1
execute unless score @s pnp.sbw matches 1 run return 0
execute if score @s pnp.sbm matches 1 run return run function pnp:board/side_board/fill_lock
function pnp:board/plot/get_coords
data modify storage pnp:board sb.x0 set from storage pnp:board tmp.x
function pnp:board/side_board/build_fill_at_plot with storage pnp:board sb
function pnp:board/side_board/fill
