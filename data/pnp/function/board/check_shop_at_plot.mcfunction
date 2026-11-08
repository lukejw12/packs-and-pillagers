$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.k.shop,distance=..26] run function pnp:board/plot/give_gift_6_at {x:$(x)}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.k.sell,distance=..26] positioned $(x) 65.01 4 positioned ~20.5 ~ ~ run function pnp:card/spawn {card:"sell_box"}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.c.shop_caving,distance=..26] positioned $(x) 65.01 4 positioned ~17.5 ~ ~ run function pnp:card/spawn {card:"shop_caving"}
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_humble,tag=!pnp.held,distance=..26] at @s positioned $(x) ~ ~ run tp @s ~11.5 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_farm,tag=!pnp.held,distance=..26] at @s positioned $(x) ~ ~ run tp @s ~13.5 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_adventure,tag=!pnp.held,distance=..26] at @s positioned $(x) ~ ~ run tp @s ~15.5 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_caving,tag=!pnp.held,distance=..26] at @s positioned $(x) ~ ~ run tp @s ~17.5 ~ ~
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.shop_combat,tag=!pnp.held,distance=..26] at @s positioned $(x) ~ ~ run tp @s ~19 ~ ~
