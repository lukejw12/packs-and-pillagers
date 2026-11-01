scoreboard players operation @s pnp.mhv = @s pnp.hover
scoreboard players operation #uid pnp.tmp = @s pnp.hover
data remove storage pnp:board mi
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run data modify storage pnp:board mi.c set from entity @s item.components."minecraft:custom_data".card
execute if data storage pnp:board mi.c run function pnp:wrench/machine_info_for_card with storage pnp:board mi
