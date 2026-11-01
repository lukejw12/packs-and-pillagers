scoreboard players operation @p[tag=pnp.painter] pnp.pax = #pcx pnp.tmp
scoreboard players operation @p[tag=pnp.painter] pnp.paz = #pcz pnp.tmp
scoreboard players set @p[tag=pnp.painter] pnp.pcs 1
summon block_display ~ 64.03 ~ {Tags:["pnp.board_ent","pnp.pmark","pnp.pm_new"],block_state:{Name:"minecraft:white_stained_glass"},Glowing:1b,glow_color_override:16777215,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.03f,1f]}}
scoreboard players operation @e[type=block_display,tag=pnp.pm_new] pnp.pid = #me pnp.tmp
tag @e[type=block_display,tag=pnp.pm_new] remove pnp.pm_new
playsound minecraft:ui.button.click master @p[tag=pnp.painter] ~ ~ ~ 0.4 1.8
title @p[tag=pnp.painter] actionbar {translate:"pnp.paint.now_click_the_opposite_corner",fallback:"Now click the opposite corner.",color:"gray"}
