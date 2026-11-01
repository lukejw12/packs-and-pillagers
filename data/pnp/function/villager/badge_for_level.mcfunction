$summon item_display ~ ~ ~ {Tags:["pnp.card_part","pnp.badge","pnp.bd_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/badge_$(l)"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.31f,0.025f,-0.34f],scale:[0.15f,0.15f,0.15f]}}
ride @e[type=item_display,tag=pnp.bd_new,limit=1] mount @s
tag @e[type=item_display,tag=pnp.bd_new] remove pnp.bd_new
