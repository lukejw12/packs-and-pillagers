scoreboard players operation #pu pnp.tmp = @s pnp.uid
summon item_display ~0.56 65.04 ~0.0 {Tags:["pnp.board_ent","pnp.port","pnp.port_out","pnp.pt_new"],Glowing:1b,glow_color_override:16755200,brightness:{sky:15,block:15},teleport_duration:2,item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/port_out"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
scoreboard players set @e[type=item_display,tag=pnp.pt_new] pnp.pnum 11
scoreboard players operation @e[type=item_display,tag=pnp.pt_new] pnp.puid = #pu pnp.tmp
scoreboard players operation @e[type=item_display,tag=pnp.pt_new] pnp.pid = #me pnp.tmp
scoreboard players add #portid pnp.ids 1
scoreboard players operation @e[type=item_display,tag=pnp.pt_new] pnp.portid = #portid pnp.ids
tag @e[type=item_display,tag=pnp.pt_new] remove pnp.pt_new
