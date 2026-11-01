execute unless score #hsize pnp.tmp matches 1 run title @s actionbar {translate:"pnp.logistics.drop_a_single_card_on_an",fallback:"Drop a single card on an Autocrafter to choose what it makes.",color:"red"}
execute unless score #hsize pnp.tmp matches 1 run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
tag @e[type=item_display,tag=pnp.lac] remove pnp.lac
execute as @e[type=item_display,tag=pnp.c.autocrafter,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run tag @s add pnp.lac
execute as @e[type=item_display,tag=pnp.lac,limit=1] at @s if data entity @s item.components."minecraft:custom_data".flt run function pnp:logistics/hopper/pop_filter
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run data modify entity @e[type=item_display,tag=pnp.lac,limit=1] item.components."minecraft:custom_data".flt set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.lac,limit=1] at @s run function pnp:logistics/autocrafter/setup
execute as @e[type=item_display,tag=pnp.lac,limit=1] at @s run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.lac,limit=1] at @s run playsound minecraft:block.copper.place block @a[distance=..24] ~ ~ ~ 0.8 1.4
title @s actionbar {translate:"pnp.logistics.recipe_set_feed_it_the_ingredients",fallback:"Recipe set. Feed it the ingredients.",color:"green"}
tag @e[type=item_display,tag=pnp.lac] remove pnp.lac
