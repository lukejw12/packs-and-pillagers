data remove storage pnp:board eqh
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hs pnp.tmp run data modify storage pnp:board eqh.c set from entity @s item.components."minecraft:custom_data".card
execute unless data storage pnp:board eqh.c run return fail
return run function pnp:villager/held_slot_for_card with storage pnp:board eqh
