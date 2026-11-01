summon text_display ~ ~0.55 ~ {Tags:["pnp.dmg"],billboard:"center",background:0,brightness:{sky:15,block:15},text:{translate:"pnp.gateway.illusion",fallback:"Illusion!",color:"light_purple",bold:true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
particle minecraft:witch ~ ~0.3 ~ 0.2 0.1 0.2 0 8
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..24] ~ ~ ~ 0.4 1.6
data modify entity @s item.components."minecraft:item_model" set value "pnp:card/illusioner_ghost"
scoreboard players set @s pnp.fuse 30
