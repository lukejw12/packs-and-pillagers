scoreboard players set @s pnp.sblk 1
scoreboard players set @s pnp.sbv 2
function pnp:board/plot/get_coords
data modify storage pnp:board sb.x0 set from storage pnp:board tmp.x
function pnp:board/side_board/build_load_at_plot with storage pnp:board sb
scoreboard players set @s pnp.sbm 1
scoreboard players set @s pnp.sbw 10
