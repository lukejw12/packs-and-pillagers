$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.card,distance=..30] at @s run tp @s ~256 ~ ~
$execute in pnp:board run fill $(x) 64 0 $(x2) 64 31 minecraft:air
$execute in pnp:board run forceload remove $(x) 0 $(x2) 31
