$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,distance=..14] if score @s pnp.stack = #cs pnp.tmp unless entity @s[tag=pnp.c.$(c)] run return fail
execute as @e[type=item_display,tag=pnp.card,distance=..14] if score @s pnp.stack = #cs pnp.tmp if entity @s[tag=pnp.held] run return fail
execute as @e[type=item_display,tag=pnp.card,distance=..14] if score @s pnp.stack = #cs pnp.tmp if entity @s[tag=pnp.infight] run return fail
scoreboard players set #gsz pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.cg_carry,distance=..14] if score @s pnp.stack = #cs pnp.tmp run scoreboard players add #gsz pnp.tmp 1
return 1
