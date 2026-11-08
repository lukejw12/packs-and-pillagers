$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.c.shop_wastes,distance=..24] positioned $(cx) 65.01 7 positioned ~-3 ~ ~ run function pnp:card/spawn {card:"shop_wastes"}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.c.shop_fortress,distance=..24] positioned $(cx) 65.01 7 run function pnp:card/spawn {card:"shop_fortress"}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.c.shop_bastion,distance=..24] positioned $(cx) 65.01 7 positioned ~3 ~ ~ run function pnp:card/spawn {card:"shop_bastion"}
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_wastes,tag=!pnp.held,distance=..24] at @s positioned $(cx) ~ ~ run tp @s ~-3 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_fortress,tag=!pnp.held,distance=..24] at @s positioned $(cx) ~ ~ run tp @s ~ ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_bastion,tag=!pnp.held,distance=..24] at @s positioned $(cx) ~ ~ run tp @s ~3 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.k.shop,tag=!pnp.goldshop,tag=!pnp.c.wandering_trader,distance=..24] run function pnp:nether/shop_tag with entity @s item.components."minecraft:custom_data"
