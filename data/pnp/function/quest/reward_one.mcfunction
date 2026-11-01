$function pnp:card/spawn {card:"$(c)"}
execute as @e[type=item_display,tag=pnp.card,distance=..3] if score @s pnp.uid = #uid pnp.ids run function pnp:quest/reward_set
