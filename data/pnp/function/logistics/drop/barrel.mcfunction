tag @e[type=item_display,tag=pnp.lbar] remove pnp.lbar
execute as @e[type=item_display,tag=pnp.c.barrel,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 run tag @s add pnp.lbar
data remove storage pnp:board lbt
data modify storage pnp:board lbt.t set from entity @e[type=item_display,tag=pnp.lbar,limit=1] item.components."minecraft:custom_data".bt
execute unless data storage pnp:board lbt.t as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if score @s pnp.idx matches 0 run data modify storage pnp:board lbt.t set from entity @s item.components."minecraft:custom_data".card
scoreboard players set #bad pnp.tmp 0
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:logistics/drop/check_barrel
scoreboard players operation #bc pnp.tmp = @e[type=item_display,tag=pnp.lbar,limit=1] pnp.bcount
scoreboard players operation #bc pnp.tmp += #hsize pnp.tmp
execute unless entity @e[type=item_display,tag=pnp.lbar,tag=pnp.c.copper_barrel] if score #bc pnp.tmp matches 129.. run scoreboard players set #bad pnp.tmp 2
execute if entity @e[type=item_display,tag=pnp.lbar,tag=pnp.c.copper_barrel] if score #bc pnp.tmp matches 257.. run scoreboard players set #bad pnp.tmp 2
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if entity @s[tag=pnp.k.unit] run scoreboard players set #bad pnp.tmp 3
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if entity @s[tag=pnp.k.animal] run scoreboard players set #bad pnp.tmp 3
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp if entity @s[tag=pnp.k.enemy] run scoreboard players set #bad pnp.tmp 3
execute if score #bad pnp.tmp matches 3 run title @s actionbar {translate:"pnp.logistics.barrels_cant_hold_living",fallback:"Barrels can't hold villagers, animals, or monsters.",color:"red"}
execute if score #bad pnp.tmp matches 1 run title @s actionbar {translate:"pnp.logistics.a_barrel_only_holds_one_kind",fallback:"A barrel only holds one kind of card.",color:"red"}
execute if score #bad pnp.tmp matches 2 run title @s actionbar {translate:"pnp.logistics.that_barrel_is_full_128_cards",fallback:"That barrel is full (128 cards).",color:"red"}
execute if score #bad pnp.tmp matches 1.. run return run scoreboard players set #route pnp.tmp 2
scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.lbar,limit=1] run data modify entity @s item.components."minecraft:custom_data".bt set from storage pnp:board lbt.t
scoreboard players operation @e[type=item_display,tag=pnp.lbar,limit=1] pnp.bcount += #hsize pnp.tmp
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:card/remove
execute as @e[type=item_display,tag=pnp.lbar,limit=1] at @s run function pnp:logistics/label/update
execute as @e[type=item_display,tag=pnp.lbar,limit=1] at @s run playsound minecraft:block.barrel.close block @a[distance=..24] ~ ~ ~ 0.8 1
tag @e[type=item_display,tag=pnp.lbar] remove pnp.lbar
