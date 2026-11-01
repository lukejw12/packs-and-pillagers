execute as @e[type=text_display,tag=pnp.wslabel,distance=..2] run kill @s
summon text_display ~ ~1.25 ~ {Tags:["pnp.wslabel"],billboard:"center",background:0,shadow:1b,brightness:{sky:15,block:15},text:{text:"",color:"aqua"}}
data modify entity @e[type=text_display,tag=pnp.wslabel,distance=..2,limit=1,sort=nearest] text.text set from storage pnp:board rn.n
