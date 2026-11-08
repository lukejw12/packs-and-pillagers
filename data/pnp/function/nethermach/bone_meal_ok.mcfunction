scoreboard players operation #bms pnp.tmp = @e[type=item_display,tag=pnp.dt,limit=1] pnp.stack
scoreboard players set #bmg pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #bms pnp.tmp run function pnp:nethermach/bone_meal_check
execute if score #bmg pnp.tmp matches 0 run return 0
scoreboard players set #bmr pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #bms pnp.tmp if score @s pnp.idx matches 0 if score @s pnp.recipe matches 1.. run scoreboard players set #bmr pnp.tmp 1
return run scoreboard players get #bmr pnp.tmp
