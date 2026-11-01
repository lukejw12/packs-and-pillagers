execute as @e[type=item_display,tag=pnp.k.pack,distance=..64] if score @s pnp.uid = #uid pnp.tmp at @s run function pnp:board/pack/open
function pnp:board/hover/clear
scoreboard players set @s pnp.hover -1
