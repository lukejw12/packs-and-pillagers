scoreboard players set #ln pnp.tmp 1
function pnp:raid/ladder/spawn {enemy:"ravager"}
$execute in pnp:board as @e[type=item_display,tag=pnp.c.ravager] if score @s pnp.uid = #uid pnp.ids at @s run function pnp:raid/ravager/$(r)_rider
