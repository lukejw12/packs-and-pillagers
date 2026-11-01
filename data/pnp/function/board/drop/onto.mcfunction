scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/hover/target
scoreboard players set #tsize pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..64] if score @s pnp.stack = #tsid pnp.tmp run scoreboard players add #tsize pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/join
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/settle
