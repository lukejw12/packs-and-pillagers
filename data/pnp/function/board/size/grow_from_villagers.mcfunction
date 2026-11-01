return 0
execute unless score @s pnp.msz matches 1.. run function pnp:board/size/init_size
execute if score @s pnp.msz matches 30.. run return 0
function pnp:board/plot/get_coords
function pnp:board/size/grow_from_villagers_at_plot with storage pnp:board tmp
