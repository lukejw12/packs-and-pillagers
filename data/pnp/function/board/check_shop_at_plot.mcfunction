$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.k.shop,distance=..26] run function pnp:board/plot/give_gift_6_at {x:$(x)}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.k.sell,distance=..26] positioned $(x) 65.01 4 positioned ~20.5 ~ ~ run function pnp:card/spawn {card:"sell_box"}
$execute in pnp:board positioned $(cx) 65 16 unless entity @e[type=item_display,tag=pnp.c.shop_caving,distance=..26] positioned $(x) 65.01 4 positioned ~19 ~ ~ run function pnp:card/spawn {card:"shop_caving"}
