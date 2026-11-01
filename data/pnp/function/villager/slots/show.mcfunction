execute as @e[type=item_display,tag=pnp.slot_ent] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players operation @s pnp.svil = #sv pnp.tmp
execute if score #sv pnp.tmp matches ..0 run return 0
execute as @e[type=item_display,tag=pnp.slotable,distance=..64] if score @s pnp.uid = #sv pnp.tmp at @s run function pnp:villager/slots/spawn
