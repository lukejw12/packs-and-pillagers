scoreboard players set @s pnp.paint 0
scoreboard players set @s pnp.pcs 0
execute as @e[type=block_display,tag=pnp.pmark] if score @s pnp.pid = #me pnp.tmp run kill @s
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.4 1.0
