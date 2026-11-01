$summon item_display ^ ^0.3 ^0.3 {Tags:["pnp.proj","pnp.proj_new"],teleport_duration:3,brightness:{sky:15,block:15},item_display:"none",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"$(m)"}},transformation:{left_rotation:[0f,0.7071068f,-0.7071068f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
execute as @e[type=item_display,tag=pnp.proj_new] positioned as @s run tp @s ~ ~ ~ ~180 0
scoreboard players operation @e[type=item_display,tag=pnp.proj_new] pnp.target = #t pnp.tmp
scoreboard players set @e[type=item_display,tag=pnp.proj_new] pnp.life 0
tag @e[type=item_display,tag=pnp.proj_new] remove pnp.proj_new
$playsound $(s) hostile @a[distance=..24] ~ ~ ~ 0.6 1.1
