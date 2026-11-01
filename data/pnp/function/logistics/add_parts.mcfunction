summon text_display ~ ~ ~ {Tags:["pnp.card_part","pnp.lstat","pnp.lp_new"],brightness:{sky:15,block:15},background:0,shadow:0b,text:"",transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0145f,0.44f],scale:[0.3f,0.3f,0.3f]}}
summon item_display ~ ~ ~ {Tags:["pnp.card_part","pnp.licon","pnp.lp_new"],brightness:{sky:15,block:15},item_display:"none",transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.22f,0.03f,0.1f],scale:[0.4f,0.4f,0.4f]}}
tag @s add pnp.lp_host
execute as @e[tag=pnp.lp_new,distance=..1] run ride @s mount @e[type=item_display,tag=pnp.lp_host,limit=1]
tag @s remove pnp.lp_host
kill @e[tag=pnp.lp_new,distance=..1,predicate=!pnp:riding]
tag @e[tag=pnp.lp_new] remove pnp.lp_new
