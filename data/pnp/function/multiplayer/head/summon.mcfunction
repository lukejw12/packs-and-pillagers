scoreboard players set #hm pnp.tmp 1
summon item_display ~ 65.8 ~ {Tags:["pnp.board_ent","pnp.phead","pnp.ph_new"],teleport_duration:1,billboard:"center",brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:player_head",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
scoreboard players operation @e[type=item_display,tag=pnp.ph_new] pnp.pid = #me pnp.tmp
