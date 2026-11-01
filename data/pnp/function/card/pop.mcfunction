$data modify storage pnp:board rt.c set value "$(card)"
execute if score #rsrc pnp.tmp matches 1.. if function pnp:route/try_pop run return 0
$execute positioned ~ ~0.35 ~ run function pnp:card/spawn {card:"$(card)"}
execute as @e[type=item_display,tag=pnp.card,distance=..2] if score @s pnp.uid = #uid pnp.ids run function pnp:card/pop/start
