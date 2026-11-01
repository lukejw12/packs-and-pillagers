data remove storage pnp:board il
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run data modify storage pnp:board il.c set from entity @s item.components."minecraft:custom_data".card
execute store result storage pnp:board il.p int 1 run scoreboard players get @s pnp.here
function pnp:idea/learn_card with storage pnp:board il
