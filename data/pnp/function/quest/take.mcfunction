execute if score @e[type=item_display,tag=pnp.qcur,limit=1] pnp.qprog >= @e[type=item_display,tag=pnp.qcur,limit=1] pnp.qneed run return 0
scoreboard players add @e[type=item_display,tag=pnp.qcur,limit=1] pnp.qprog 1
scoreboard players add #qgot pnp.tmp 1
function pnp:card/remove
