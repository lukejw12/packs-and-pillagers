scoreboard players operation #cdu pnp.tmp = @s pnp.ldst
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..40] if score @s pnp.uid = #cdu pnp.tmp if function pnp:route/accepts run return 1
return fail
