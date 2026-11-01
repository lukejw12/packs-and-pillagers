summon block_display ~ ~ ~ {Tags:["pnp.card_part","pnp.lockfx","pnp.lf_new"],brightness:{sky:15,block:15},block_state:"minecraft:red_stained_glass",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.31f,0.03f,-0.43f],scale:[0.62f,0.01f,0.86f]}}
summon item_display ~ ~ ~ {Tags:["pnp.card_part","pnp.lockfx","pnp.lf_new"],brightness:{sky:15,block:15},item_display:"gui",item:{id:"minecraft:barrier",count:1},transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[0.5f,0.5f,0.5f]}}
tag @s add pnp.lf_host
execute as @e[tag=pnp.lf_new,distance=..1] run ride @s mount @e[type=item_display,tag=pnp.lf_host,limit=1]
tag @s remove pnp.lf_host
kill @e[tag=pnp.lf_new,distance=..1,predicate=!pnp:riding]
tag @e[tag=pnp.lf_new] remove pnp.lf_new
