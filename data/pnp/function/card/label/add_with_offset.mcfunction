execute on passengers if entity @s[tag=pnp.stat_label] run kill @s
$summon text_display ~ ~ ~ {Tags:["pnp.card_part","pnp.stat_label","pnp.lbl_new"],brightness:{sky:15,block:15},background:0,shadow:0b,text:"",transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[$(hx)f,0.0145f,0.395f],scale:[0.56f,0.56f,0.56f]}}
ride @e[type=text_display,tag=pnp.lbl_new,limit=1] mount @s
tag @e[type=text_display,tag=pnp.lbl_new] remove pnp.lbl_new
tag @s add pnp.hlbl
function pnp:card/label/stats
