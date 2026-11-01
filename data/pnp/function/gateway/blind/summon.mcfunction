summon item_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.fxblind","pnp.fx_new"],Glowing:1b,glow_color_override:65534,billboard:"center",teleport_duration:1,brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/trigger"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]}}
scoreboard players operation @e[type=item_display,tag=pnp.fx_new] pnp.pid = #me pnp.tmp
tag @e[type=item_display,tag=pnp.fx_new] remove pnp.fx_new
