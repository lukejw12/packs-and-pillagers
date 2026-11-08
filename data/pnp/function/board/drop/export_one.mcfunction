execute if entity @s[tag=pnp.c.villager] run return run function pnp:villager/release/release_card
execute if entity @s[tag=pnp.c.enchanted_book] run return run function pnp:enchanted_book/export
execute if entity @s[tag=pnp.c.grave] run tag @a[tag=pnp.dropper] add pnp.claimer
execute if entity @s[tag=pnp.c.grave] run return run function pnp:grave/claim
execute if entity @s[tag=pnp.c.map_trial] run return run function pnp:maps/give {m:"trial"}
execute if entity @s[tag=pnp.c.map_mansion] run return run function pnp:maps/give {m:"mansion"}
execute if entity @s[tag=pnp.c.map_monument] run return run function pnp:maps/give {m:"monument"}
execute if entity @s[tag=pnp.c.map_city] run return run function pnp:maps/give {m:"city"}
execute if data entity @s item.components."minecraft:custom_data".en run return run function pnp:enchant/export
data modify storage pnp:board ex.card set from entity @s item.components."minecraft:custom_data".card
function pnp:board/drop/export_card with storage pnp:board ex
