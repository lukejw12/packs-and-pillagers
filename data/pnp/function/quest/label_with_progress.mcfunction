execute on passengers if entity @s[tag=pnp.qlabel] run kill @s
$summon text_display ~ ~ ~ {Tags:["pnp.card_part","pnp.qlabel","pnp.ql_new"],billboard:"fixed",background:0,shadow:0b,brightness:{sky:15,block:15},text:{text:"$(a) / $(b)",color:"#3b2410",bold:true},transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.02f,0.33f],scale:[0.55f,0.55f,0.55f]}}
ride @e[type=text_display,tag=pnp.ql_new,limit=1] mount @s
tag @e[type=text_display,tag=pnp.ql_new] remove pnp.ql_new
