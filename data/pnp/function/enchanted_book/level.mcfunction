$execute store result storage pnp:board eb.l int 1 run random value 1..$(max)
data modify entity @s item.components."minecraft:custom_data".ench set from storage pnp:board eb.e.id
data modify entity @s item.components."minecraft:custom_data".lvl set from storage pnp:board eb.l
data modify storage pnp:board eb.n set from storage pnp:board eb.e.n
function pnp:enchanted_book/name with storage pnp:board eb
