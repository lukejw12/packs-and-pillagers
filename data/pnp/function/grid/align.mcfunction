function pnp:board/plot/get_coords
function pnp:grid/align_at_plot with storage pnp:board tmp
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.7 1.2
title @s actionbar {translate:"pnp.grid.cards_lined_up_on_the_grid",fallback:"Cards lined up on the grid.",color:"green"}
