scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,tag=pnp.c.bone_meal,limit=1] run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #bms pnp.tmp if score @s pnp.idx matches 0 if score @s pnp.recipe matches 1.. at @s run function pnp:nethermach/bone_meal_finish
