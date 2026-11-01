execute in pnp:board as @e[type=item_display,tag=pnp.selg] if score @s pnp.selp = #me pnp.tmp run function pnp:selection/back_one
scoreboard players set @s pnp.sls 0
function pnp:selection/box/remove
title @s actionbar {text:"Put everything back.",color:"gray"}
return 1
