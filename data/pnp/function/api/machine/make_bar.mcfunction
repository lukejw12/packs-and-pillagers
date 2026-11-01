summon block_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.mbar","pnp.mbar_new"],brightness:{sky:15,block:15},block_state:"minecraft:gray_concrete",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,0f,-0.67f],scale:[0.875f,0.012f,0.1f]}}
summon block_display ~ ~ ~ {Tags:["pnp.board_ent","pnp.mbar","pnp.mbar_fill","pnp.mbar_new"],brightness:{sky:15,block:15},block_state:"minecraft:lime_concrete",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,0.003f,-0.67f],scale:[0f,0.012f,0.1f]}}
tag @s add pnp.mbar_host
execute as @e[type=block_display,tag=pnp.mbar_new,distance=..1] run ride @s mount @e[type=item_display,tag=pnp.mbar_host,limit=1]
tag @s remove pnp.mbar_host
tag @e[type=block_display,tag=pnp.mbar_new] remove pnp.mbar_new
