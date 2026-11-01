scoreboard players operation #bsid pnp.tmp = @s pnp.stack
execute as @e[type=block_display,tag=pnp.bar,distance=..3] if score @s pnp.stack = #bsid pnp.tmp run kill @s
summon block_display ~ ~ ~ {Tags:["pnp.bar","pnp.bar_new"],brightness:{sky:15,block:15},block_state:"minecraft:gray_concrete",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,0f,-0.67f],scale:[0.875f,0.012f,0.1f]}}
summon block_display ~ ~ ~ {Tags:["pnp.bar","pnp.bar_fill","pnp.bar_new"],brightness:{sky:15,block:15},block_state:"minecraft:lime_concrete",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,0.003f,-0.67f],scale:[0f,0.012f,0.1f]}}
scoreboard players operation @e[type=block_display,tag=pnp.bar_new,distance=..1] pnp.stack = @s pnp.stack
tag @s add pnp.bar_host
execute as @e[type=block_display,tag=pnp.bar_new,distance=..1] run ride @s mount @e[type=item_display,tag=pnp.bar_host,limit=1]
tag @s remove pnp.bar_host
tag @e[type=block_display,tag=pnp.bar_new,distance=..1] remove pnp.bar_new
