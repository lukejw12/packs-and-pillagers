execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run particle minecraft:trial_omen ~ ~0.4 ~ 0.3 0.3 0.3 0 20
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:card/remove
function pnp:raid/omen
