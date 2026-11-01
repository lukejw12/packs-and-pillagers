$scoreboard players set @s pnp.price $(price)
scoreboard players set @s pnp.paid 0
summon text_display ~ ~ ~ {Tags:["pnp.card_part","pnp.stat_label","pnp.lbl_new"],brightness:{sky:15,block:15},background:0,shadow:0b,text:"",transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0145f,0.44f],scale:[0.3f,0.3f,0.3f]}}
ride @e[type=text_display,tag=pnp.lbl_new,limit=1] mount @s
tag @e[type=text_display,tag=pnp.lbl_new] remove pnp.lbl_new
function pnp:shop/label
