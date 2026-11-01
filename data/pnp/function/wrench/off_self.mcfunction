scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set @s pnp.tool 0
execute as @e[tag=pnp.fxtrig] if score @s pnp.pid = #me pnp.tmp run kill @s
playsound minecraft:block.piston.contract master @s ~ ~ ~ 0.5 1.6
title @s actionbar {translate:"pnp.wrench.tool_mode_off",fallback:"Tool mode off.",color:"gray"}
