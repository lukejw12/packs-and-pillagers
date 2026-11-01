data modify storage pnp:board ex2 set value {e:"mending",l:1}
data modify storage pnp:board ex2.e set from entity @s item.components."minecraft:custom_data".ench
data modify storage pnp:board ex2.l set from entity @s item.components."minecraft:custom_data".lvl
function pnp:enchanted_book/give with storage pnp:board ex2
function pnp:card/remove
