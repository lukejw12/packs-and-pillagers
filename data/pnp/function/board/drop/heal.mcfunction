scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run data modify storage pnp:board hl.food set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.dt,limit=1] run data modify storage pnp:board hl.unit set from entity @s item.components."minecraft:custom_data".card
scoreboard players set #healed pnp.tmp 0
function pnp:board/drop/heal_with_food with storage pnp:board hl
execute if score #healed pnp.tmp matches 0 run scoreboard players set #route pnp.tmp 2
