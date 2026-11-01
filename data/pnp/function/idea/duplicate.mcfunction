execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:idea/reveal with storage pnp:board il
function pnp:idea/duplicate_message with storage pnp:board il
