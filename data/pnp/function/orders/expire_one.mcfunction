execute store result score #oo pnp.tmp run data get entity @s item.components."minecraft:custom_data".oday
execute if score #oo pnp.tmp > #oex pnp.tmp run return 0
execute at @s run particle minecraft:poof ~ ~0.2 ~ 0.25 0.1 0.25 0.02 10
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.orders.expired",fallback:"An Order expired.",color:"gray"}
function pnp:card/remove
