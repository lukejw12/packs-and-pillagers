scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/hover/target
execute if score @s pnp.holding matches 1.. run scoreboard players set #tk pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx >= #tk pnp.tmp run tag @s add pnp.hl
execute if score @s pnp.holding matches 1.. as @e[type=item_display,tag=pnp.hl,distance=..64] run function pnp:card/glow/target
execute unless score @s pnp.holding matches 1.. as @e[type=item_display,tag=pnp.hl,distance=..64] run function pnp:card/glow/hover
