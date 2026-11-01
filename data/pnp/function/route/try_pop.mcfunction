scoreboard players set #sent pnp.tmp 0
scoreboard players operation #rs pnp.tmp = #rsrc pnp.tmp
scoreboard players set #rsrc pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=pnp.hasout,distance=..3] if score @s pnp.uid = #rs pnp.tmp at @s run function pnp:route/send
scoreboard players operation #rsrc pnp.tmp = #rs pnp.tmp
return run scoreboard players get #sent pnp.tmp
