data modify storage pnp:board orw set from entity @s item.components."minecraft:custom_data".rw
function pnp:orders/rw_loop
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.orders.filled",fallback:"Order filled!",color:"gold"}
playsound minecraft:entity.villager.celebrate master @a[distance=..32] ~ ~ ~ 0.8 1
function pnp:card/remove
