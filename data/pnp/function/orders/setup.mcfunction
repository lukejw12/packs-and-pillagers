$function pnp:quest/setup/$(c)
tag @s add pnp.order
execute store result entity @s item.components."minecraft:custom_data".oday int 1 run scoreboard players get #day pnp.tmp
execute store result score #oe pnp.tmp run random value 2..4
execute if score #oe pnp.tmp matches 2 run data modify entity @s item.components."minecraft:custom_data" merge value {rw:["emerald","emerald"],rwd:"2 Emeralds"}
execute if score #oe pnp.tmp matches 3 run data modify entity @s item.components."minecraft:custom_data" merge value {rw:["emerald","emerald","emerald"],rwd:"3 Emeralds"}
execute if score #oe pnp.tmp matches 4 run data modify entity @s item.components."minecraft:custom_data" merge value {rw:["emerald","emerald","emerald","emerald"],rwd:"4 Emeralds"}
function pnp:quest/label
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.orders.new",fallback:"The Trading Post posted a new Order. Fill it within 2 days.",color:"green"}
