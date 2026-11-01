data modify storage pnp:board rt.c set from entity @s item.components."minecraft:custom_data".card
scoreboard players operation #du pnp.tmp = @s pnp.tdst
scoreboard players set #ok pnp.tmp 0
scoreboard players set #depth pnp.tmp 0
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.held,distance=..3] if score @s pnp.uid = #du pnp.tmp if function pnp:route/accepts at @s run function pnp:route/put
execute if score #ok pnp.tmp matches 0 run function pnp:logistics/spill with storage pnp:board rt
kill @s
