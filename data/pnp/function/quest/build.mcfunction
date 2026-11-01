$forceload add $(b2) 0 $(c2) 31
$fill $(q1) 64 9 $(q2) 64 22 minecraft:spruce_planks
$fill $(f1) 64 10 $(f2) 64 21 minecraft:brown_wool
$fill $(b1) 64 14 $(b2) 64 17 minecraft:spruce_planks replace air
$fill $(q1) 63 9 $(q2) 63 22 minecraft:spruce_planks
$kill @e[type=text_display,tag=pnp.qtitle,x=$(q1),y=60,z=0,dx=12,dy=10,dz=30]
$summon text_display $(cx).5 65.03 10.75 {Tags:["pnp.qtitle"],billboard:"fixed",background:0,shadow:1b,brightness:{sky:15,block:15},text:{text:"✎ Quests",color:"#ffe9b0",bold:true},transformation:{left_rotation:[-0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]}}
playsound minecraft:block.wood.place master @a[distance=..40] ~ ~ ~ 0.6 1
