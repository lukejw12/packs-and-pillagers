scoreboard players operation #oex pnp.tmp = #day pnp.tmp
scoreboard players remove #oex pnp.tmp 2
execute as @e[type=item_display,tag=pnp.order,tag=!pnp.held] run function pnp:orders/expire_one
