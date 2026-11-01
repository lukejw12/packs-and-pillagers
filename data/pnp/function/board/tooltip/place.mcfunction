tp @s ^-1.55 ^0.3 ^0.1
data modify entity @s text set from storage pnp:board tt
execute store result storage pnp:board tr.p int 1 run scoreboard players get @s pnp.pid
function pnp:board/tooltip/set_last with storage pnp:board tr
data merge entity @s {start_interpolation:0,transformation:{scale:[0.7f,0.7f,0.7f]}}
