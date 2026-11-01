scoreboard players remove @s pnp.hp 1
function pnp:card/label/stats
particle minecraft:entity_effect{color:[0.3f,0.6f,0.15f,1.0f]} ~ ~0.3 ~ 0.2 0.1 0.2 0 6
summon text_display ~ ~0.55 ~ {Tags:["pnp.dmg"],billboard:"center",background:0,brightness:{sky:15,block:15},text:{text:"-1",color:"dark_green",bold:true},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
