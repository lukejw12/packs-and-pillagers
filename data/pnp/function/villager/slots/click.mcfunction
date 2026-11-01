scoreboard players operation #su pnp.tmp = @s pnp.svil
execute if score @s pnp.sslot matches 1 as @e[type=item_display,tag=pnp.slotable,tag=!pnp.k.enemy,distance=..64] if score @s pnp.uid = #su pnp.tmp at @s run function pnp:villager/unequip {s:"t"}
execute if score @s pnp.sslot matches 2 as @e[type=item_display,tag=pnp.slotable,tag=!pnp.k.enemy,distance=..64] if score @s pnp.uid = #su pnp.tmp at @s run function pnp:villager/unequip {s:"a"}
execute if score @s pnp.sslot matches 3 as @e[type=item_display,tag=pnp.slotable,tag=!pnp.k.enemy,distance=..64] if score @s pnp.uid = #su pnp.tmp at @s run function pnp:villager/unequip {s:"s"}
scoreboard players set @s pnp.svil -1
