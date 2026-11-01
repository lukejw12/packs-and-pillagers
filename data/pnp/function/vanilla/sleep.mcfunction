scoreboard players set @s pnp.vsleep 0
function pnp:board/plot/get_coords
function pnp:vanilla/sleep_at_plot with storage pnp:board tmp
tellraw @s {translate:"pnp.vanilla.your_villagers_wake_up_rested_and",fallback:"Your villagers wake up rested and fully healed.",color:"green"}
