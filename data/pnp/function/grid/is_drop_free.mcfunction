execute unless block ~ ~-0.5 ~ #pnp:felt run return fail
execute if entity @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.cg_carry,scores={pnp.idx=0},distance=..0.4] run return fail
return 1
