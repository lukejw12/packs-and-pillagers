$summon item_display ~ ~ ~ {Tags:["pnp.card_part","pnp.wpn_icon","pnp.wpn_new"],brightness:{sky:15,block:15},item_display:"gui",item:{id:"minecraft:mace",count:1,components:{"minecraft:item_model":"$(icon)"}},transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0.27f,0.02f,0.375f],scale:[0.12f,0.12f,0.12f]}}
ride @e[type=item_display,tag=pnp.wpn_new,limit=1] mount @s
tag @e[type=item_display,tag=pnp.wpn_new] remove pnp.wpn_new
