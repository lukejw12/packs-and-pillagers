execute as @e[tag=pnp.kb_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players set @s pnp.kbo 0
scoreboard players set @s pnp.hover -1
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.8
