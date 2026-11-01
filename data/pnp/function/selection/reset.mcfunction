scoreboard players set @s pnp.sls 0
function pnp:selection/box/remove
title @s actionbar {translate:"pnp.selection.selection_cleared",fallback:"Selection cleared.",color:"gray"}
return 1
