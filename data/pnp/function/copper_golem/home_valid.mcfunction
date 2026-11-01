scoreboard players operation #hv pnp.tmp = @s pnp.cgh
$execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,tag=!pnp.cg_carry,distance=..40,scores={pnp.idx=0}] if score @s pnp.stack = #hv pnp.tmp if entity @s[tag=pnp.c.$(c)] run scoreboard players set #hok pnp.tmp 1
