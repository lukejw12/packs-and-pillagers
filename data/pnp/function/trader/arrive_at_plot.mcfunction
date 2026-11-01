$execute in pnp:board positioned $(cx) 65 16 if entity @e[type=item_display,tag=pnp.c.wandering_trader,distance=..23] run return 0
$execute in pnp:board positioned $(x) 65.01 4 positioned ~8.5 ~ ~ run function pnp:card/spawn {card:"wandering_trader"}
title @s actionbar {text:"A Wandering Trader stopped by! Drop 10 emeralds on them before they leave.",color:"aqua"}
playsound minecraft:entity.wandering_trader.ambient master @s ~ ~ ~ 1 1
