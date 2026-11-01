scoreboard players operation #sv pnp.tmp = @s pnp.svil
scoreboard players set #fa pnp.tmp 0
execute as @e[type=item_display,tag=pnp.slotable,distance=..64] if score @s pnp.uid = #sv pnp.tmp at @s run function pnp:villager/slots/move
execute if score #fa pnp.tmp matches 0 run function pnp:villager/slots/hide
