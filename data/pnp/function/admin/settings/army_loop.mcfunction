execute unless data storage pnp:board adm.al[0] run return 0
function pnp:card/spawn {card:"villager"}
execute as @e[type=item_display,tag=pnp.card] if score @s pnp.uid = #uid pnp.ids run function pnp:admin/settings/army_gear
data remove storage pnp:board adm.al[0]
scoreboard players add #ai pnp.tmp 1
function pnp:admin/settings/army_loop
