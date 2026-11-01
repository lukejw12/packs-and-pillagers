$summon text_display ~ ~ ~ {Tags:["pnp.card_part","pnp.sell_label","pnp.slb_new"],brightness:{sky:15,block:15},background:0,shadow:0b,text:[{text:""},{sprite:"item/emerald",atlas:"minecraft:items"},{text:"$(v)",color:"#1E6B2E"}],transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[-0.235f,0.0145f,0.395f],scale:[0.56f,0.56f,0.56f]}}
ride @e[type=text_display,tag=pnp.slb_new,limit=1] mount @s
tag @e[type=text_display,tag=pnp.slb_new] remove pnp.slb_new
