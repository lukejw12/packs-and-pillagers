$summon item_display ~ ~0.06 ~ {Tags:["pnp.board_ent","pnp.traveler","pnp.tr_new"],teleport_duration:0,brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:card/$(c)","minecraft:custom_data":{card:"$(c)"}}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.00625f,0f],scale:[0.62f,0.62f,0.62f]}}
scoreboard players operation @e[type=item_display,tag=pnp.tr_new] pnp.tdst = #du pnp.tmp
scoreboard players operation @e[type=item_display,tag=pnp.tr_new] pnp.tx = #bx2 pnp.tmp
scoreboard players operation @e[type=item_display,tag=pnp.tr_new] pnp.tz = #bz2 pnp.tmp
scoreboard players operation @e[type=item_display,tag=pnp.tr_new] pnp.ttime = #tt pnp.tmp
tag @e[type=item_display,tag=pnp.tr_new] remove pnp.tr_new
