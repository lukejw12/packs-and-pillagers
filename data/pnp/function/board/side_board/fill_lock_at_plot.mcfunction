$execute in pnp:board positioned $(x0) 64 0 run fill ~-42 ~ ~-1 ~-5 ~ ~36 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 63 0 run fill ~-42 ~ ~-1 ~-5 ~ ~36 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 64 0 run fill ~-4 ~ ~14 ~-1 ~ ~17 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 63 0 run fill ~-4 ~ ~14 ~-1 ~ ~17 minecraft:spruce_planks replace air
$execute in pnp:board positioned $(x0) 64 0 positioned ~-41 ~ ~ run fill ~12 ~ ~12 ~23 ~ ~23 minecraft:red_concrete replace minecraft:spruce_planks
$execute in pnp:board positioned $(x0).0 60 -4.0 positioned ~-46 ~ ~ run kill @e[type=item_display,tag=pnp.sb_lock,dx=45,dy=14,dz=44]
$execute in pnp:board positioned $(x0).0 65.03 18.0 positioned ~-23 ~ ~ run function pnp:board/side_board/place_lock_sign
$execute in pnp:board positioned $(x0).0 60 -4.0 positioned ~-46 ~ ~ unless entity @e[type=item_display,tag=pnp.c.shop_side,dx=45,dy=12,dz=44] positioned ~31.5 65.01 ~22 run function pnp:card/spawn {card:"shop_side"}
