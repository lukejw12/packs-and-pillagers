$execute in pnp:board positioned $(x0) 64 0 run fill ~-42 ~ ~-1 ~-5 ~ ~36 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 63 0 run fill ~-42 ~ ~-1 ~-5 ~ ~36 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 64 0 run fill ~-4 ~ ~14 ~-1 ~ ~17 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 63 0 run fill ~-4 ~ ~14 ~-1 ~ ~17 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 64 0 run fill ~-42 ~ ~-1 ~-5 ~ ~36 minecraft:spruce_planks replace minecraft:red_concrete
$execute in pnp:board positioned $(x0).0 60 -4.0 positioned ~-46 ~ ~ run kill @e[type=item_display,tag=pnp.sb_lock,dx=45,dy=14,dz=44]
$execute in pnp:board positioned $(x0).0 60 -4.0 positioned ~-46 ~ ~ as @e[type=item_display,tag=pnp.c.shop_side,dx=45,dy=12,dz=44] run function pnp:card/remove
$execute in pnp:board as @e[type=item_display,tag=pnp.c.shop_side] at @s if entity @s[x=$(x0),y=60,z=-4,dx=90,dy=10,dz=44] run function pnp:card/remove
