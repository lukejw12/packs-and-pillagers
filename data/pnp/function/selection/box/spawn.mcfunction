function pnp:selection/box/remove
execute at @s run summon block_display ~ 65.02 ~ {Tags:["pnp.selbox","pnp.sbn"],block_state:"minecraft:white_concrete",Glowing:1b,glow_color_override:5636095,brightness:{sky:15,block:15},teleport_duration:1}
execute at @s run summon block_display ~ 65.02 ~ {Tags:["pnp.selbox","pnp.sbs"],block_state:"minecraft:white_concrete",Glowing:1b,glow_color_override:5636095,brightness:{sky:15,block:15},teleport_duration:1}
execute at @s run summon block_display ~ 65.02 ~ {Tags:["pnp.selbox","pnp.sbw"],block_state:"minecraft:white_concrete",Glowing:1b,glow_color_override:5636095,brightness:{sky:15,block:15},teleport_duration:1}
execute at @s run summon block_display ~ 65.02 ~ {Tags:["pnp.selbox","pnp.sbe"],block_state:"minecraft:white_concrete",Glowing:1b,glow_color_override:5636095,brightness:{sky:15,block:15},teleport_duration:1}
scoreboard players operation @e[type=block_display,tag=pnp.selbox,tag=!pnp.sbown] pnp.pid = #me pnp.tmp
tag @e[type=block_display,tag=pnp.selbox] add pnp.sbown
