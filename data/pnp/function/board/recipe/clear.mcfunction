scoreboard players set @s pnp.recipe 0
scoreboard players set @s pnp.timer 0
scoreboard players operation #bsid pnp.tmp = @s pnp.stack
execute as @e[type=block_display,tag=pnp.bar,distance=..3] if score @s pnp.stack = #bsid pnp.tmp run kill @s
