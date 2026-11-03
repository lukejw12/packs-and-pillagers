execute unless score #hsize pnp.tmp matches 1 run title @s actionbar {translate:"pnp.logistics.drop_a_single_card_on_a",fallback:"Drop a single card on a hopper to make it the filter.",color:"red"}
execute unless score #hsize pnp.tmp matches 1 run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
tag @e[type=item_display,tag=pnp.lhop] remove pnp.lhop
execute as @e[type=item_display,tag=pnp.c.hopper,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run tag @s add pnp.lhop
execute as @e[type=item_display,tag=pnp.lhop,limit=1] at @s if data entity @s item.components."minecraft:custom_data".flt run function pnp:logistics/hopper/pop_filter
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run data modify entity @e[type=item_display,tag=pnp.lhop,limit=1] item.components."minecraft:custom_data".flt set from entity @s item.components."minecraft:custom_data".card
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.lhop,limit=1] at @s run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.lhop,limit=1] at @s run playsound minecraft:block.copper.place block @a[distance=..24] ~ ~ ~ 0.8 1.4
title @s actionbar {translate:"pnp.logistics.filter_set_only_that_card_can",fallback:"Filter set. Only that card can go into this hopper now.",color:"green"}
tag @e[type=item_display,tag=pnp.lhop] remove pnp.lhop
