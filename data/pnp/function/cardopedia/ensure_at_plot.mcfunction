$execute in pnp:board positioned $(cx) 65 16 if entity @e[type=item_display,tag=pnp.c.cardopedia,distance=..23] run return 0
$execute in pnp:board positioned $(x) 65.01 24 positioned ~13 ~ ~ run function pnp:card/pop {card:"cardopedia"}
