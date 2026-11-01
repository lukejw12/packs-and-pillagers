summon item_display ~-0.34 ~0.015 ~0.8 {Tags:["pnp.board_ent","pnp.slot_ent","pnp.slotf","pnp.sl_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/slot_t"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players set @e[type=item_display,tag=pnp.sl_new] pnp.slotn 1
scoreboard players operation @e[type=item_display,tag=pnp.sl_new] pnp.pid = #me pnp.tmp
tag @e[type=item_display,tag=pnp.sl_new] remove pnp.sl_new
execute if data entity @s item.components."minecraft:custom_data".eq.t positioned ~-0.34 ~0.03 ~0.8 run function pnp:villager/slots/icon {s:"t",n:1}
summon item_display ~0.0 ~0.015 ~0.8 {Tags:["pnp.board_ent","pnp.slot_ent","pnp.slotf","pnp.sl_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/slot_a"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players set @e[type=item_display,tag=pnp.sl_new] pnp.slotn 2
scoreboard players operation @e[type=item_display,tag=pnp.sl_new] pnp.pid = #me pnp.tmp
tag @e[type=item_display,tag=pnp.sl_new] remove pnp.sl_new
execute if data entity @s item.components."minecraft:custom_data".eq.a positioned ~0.0 ~0.03 ~0.8 run function pnp:villager/slots/icon {s:"a",n:2}
summon item_display ~0.34 ~0.015 ~0.8 {Tags:["pnp.board_ent","pnp.slot_ent","pnp.slotf","pnp.sl_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/slot_s"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players set @e[type=item_display,tag=pnp.sl_new] pnp.slotn 3
scoreboard players operation @e[type=item_display,tag=pnp.sl_new] pnp.pid = #me pnp.tmp
tag @e[type=item_display,tag=pnp.sl_new] remove pnp.sl_new
execute if data entity @s item.components."minecraft:custom_data".eq.s positioned ~0.34 ~0.03 ~0.8 run function pnp:villager/slots/icon {s:"s",n:3}
