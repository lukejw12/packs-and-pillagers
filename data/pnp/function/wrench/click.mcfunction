execute if score #click pnp.tmp matches 2 if score @s pnp.hover matches 1.. if function pnp:wrench/hover/wrench run return run function pnp:wrench/off_table
execute if score @s pnp.ph matches 1.. if score #click pnp.tmp matches 2 run return run function pnp:wrench/port/check_selected
execute if score @s pnp.ph matches 1.. if score #click pnp.tmp matches 1 run return run function pnp:wrench/port/cut
function pnp:wrench/unselect
execute if score #rayhit pnp.tmp matches 1 run function pnp:board/glide/start
