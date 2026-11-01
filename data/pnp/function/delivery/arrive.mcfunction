execute unless loaded ~ ~ ~ run return run tag @s add pnp.dlw
tag @s remove pnp.dlw
execute store result storage pnp:board dv.p int 1 run scoreboard players get @s pnp.pid
function pnp:delivery/arrive_for_player with storage pnp:board dv
