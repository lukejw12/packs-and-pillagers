scoreboard players operation #uid pnp.tmp = @s pnp.hover
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run function pnp:board/hover/target
scoreboard players set #enemy pnp.tmp 0
execute as @e[type=item_display,tag=pnp.k.enemy,distance=..64] if score @s pnp.uid = #uid pnp.tmp run scoreboard players set #enemy pnp.tmp 1
execute as @e[type=item_display,tag=pnp.k.shop,tag=!pnp.c.wandering_trader,distance=..64] if score @s pnp.uid = #uid pnp.tmp run scoreboard players set #enemy pnp.tmp 2
execute if score #enemy pnp.tmp matches 2 run return run title @s actionbar {text:"Drop emeralds on a shop pack to buy it.",color:"green"}
execute as @e[type=item_display,tag=pnp.k.sell,distance=..64] if score @s pnp.uid = #uid pnp.tmp run scoreboard players set #enemy pnp.tmp 3
execute if score #enemy pnp.tmp matches 3 run return run title @s actionbar {text:"Drop cards here to sell them for emeralds.",color:"green"}
execute if score #enemy pnp.tmp matches 1 run return run title @s actionbar {text:"You can't move enemies. Drop a fighter on one to start a fight.",color:"red"}
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/recipe/clear
scoreboard players add #stack pnp.ids 1
scoreboard players operation @s pnp.holding = #stack pnp.ids
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx >= #tk pnp.tmp run function pnp:board/pick_up_one
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #tsid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:board/stack/check
function pnp:board/hover/clear
scoreboard players set @s pnp.hover -1
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.6 1.6
