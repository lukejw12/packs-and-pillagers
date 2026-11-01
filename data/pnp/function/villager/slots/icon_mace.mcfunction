$summon item_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.slot_ent","pnp.sloti","pnp.sl_new"],brightness:{sky:15,block:15},item_display:"gui",item:{id:"minecraft:mace",count:1,components:{"minecraft:item_model":"$(i)"}},transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]}}
$scoreboard players set @e[type=item_display,tag=pnp.sl_new] pnp.slotn $(n)
scoreboard players operation @e[type=item_display,tag=pnp.sl_new] pnp.pid = #me pnp.tmp
tag @e[type=item_display,tag=pnp.sl_new] remove pnp.sl_new
