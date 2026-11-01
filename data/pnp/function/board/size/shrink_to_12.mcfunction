function pnp:board/plot/get_coords
data modify storage pnp:board ms.x0 set from storage pnp:board tmp.x
function pnp:board/size/shrink_to_12_at_plot with storage pnp:board ms
scoreboard players set @s pnp.msz 12
function pnp:board/size/move_shop
