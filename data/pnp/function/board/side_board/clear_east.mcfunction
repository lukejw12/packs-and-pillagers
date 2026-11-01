$execute in pnp:board positioned $(x).0 60 -4.0 positioned ~45 ~ ~ run kill @e[type=item_display,tag=pnp.sb_lock,dx=44,dy=14,dz=44]
$execute in pnp:board positioned $(x).0 60 -4.0 positioned ~45 ~ ~ as @e[type=item_display,tag=pnp.c.shop_side,dx=44,dy=12,dz=44] run function pnp:card/remove
$execute in pnp:board positioned $(x) 63 -2 positioned ~45 ~ ~ run fill ~ ~ ~ ~42 ~1 ~40 minecraft:air
$execute in pnp:board positioned $(x) 64 0 run forceload remove ~45 ~-2 ~87 ~37
scoreboard players set @s pnp.sblk 0
