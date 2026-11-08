data modify storage pnp:board enx set value {}
data modify storage pnp:board enx.c set from entity @s item.components."minecraft:custom_data".card
data modify storage pnp:board enx.e set from entity @s item.components."minecraft:custom_data".en.id
data modify storage pnp:board enx.l set from entity @s item.components."minecraft:custom_data".en.l
function pnp:enchant/export_k with storage pnp:board enx
