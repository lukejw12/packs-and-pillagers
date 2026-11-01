scoreboard players operation #cs pnp.tmp = @s pnp.stack
scoreboard players operation #ci pnp.tmp = @s pnp.idx
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,distance=..14] if score @s pnp.stack = #cs pnp.tmp if score @s pnp.idx > #ci pnp.tmp run return fail
return run function pnp:copper_golem/same_kind
