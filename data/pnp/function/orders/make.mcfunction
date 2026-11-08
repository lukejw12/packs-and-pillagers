$execute positioned ~1.6 65.01 ~ run function pnp:card/spawn {card:"$(c)"}
$execute as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:orders/setup {c:"$(c)"}
