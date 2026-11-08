scoreboard players set #rsch pnp.tmp 0
scoreboard players operation #rst pnp.tmp = @s pnp.stack
execute as @e[type=item_display,tag=pnp.sp.scholar,distance=..4] if score @s pnp.stack = #rst pnp.tmp run scoreboard players set #rsch pnp.tmp 1
execute if score #rsch pnp.tmp matches 1 run scoreboard players operation @s pnp.timer += @s pnp.rspd
