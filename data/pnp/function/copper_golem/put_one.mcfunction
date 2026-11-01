execute as @e[type=item_display,tag=pnp.cg_t,tag=!pnp.c.copper_barrel,limit=1] if score @s pnp.bcount matches 128.. run return 0
execute as @e[type=item_display,tag=pnp.cg_t,tag=pnp.c.copper_barrel,limit=1] if score @s pnp.bcount matches 256.. run return 0
execute as @e[type=item_display,tag=pnp.cg_t,limit=1] run function pnp:route/put/barrel
function pnp:card/remove
