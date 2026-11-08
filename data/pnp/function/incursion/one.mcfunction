$function pnp:card/spawn {card:"$(c)"}
execute as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids run function pnp:incursion/tag
