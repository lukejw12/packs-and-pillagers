scoreboard players set #rsw pnp.tmp 0
scoreboard players operation #rst pnp.tmp = @s pnp.stack
execute as @e[type=item_display,tag=pnp.swift,distance=..4] if score @s pnp.stack = #rst pnp.tmp run scoreboard players set #rsw pnp.tmp 1
execute if score #rsw pnp.tmp matches 1 run scoreboard players operation @s pnp.timer += @s pnp.rspd
