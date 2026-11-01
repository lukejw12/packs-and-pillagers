summon item_display ~ ~0.01 ~ {Tags:["pnp.fxfang","pnp.fx_new"],brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"pnp:fx/card_fang"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.03f,0f],scale:[0f,0f,0f]}}
$scoreboard players set @e[type=item_display,tag=pnp.fx_new] pnp.life -$(w)
scoreboard players remove @e[type=item_display,tag=pnp.fx_new] pnp.life 1
tag @e[type=item_display,tag=pnp.fx_new] remove pnp.fx_new
