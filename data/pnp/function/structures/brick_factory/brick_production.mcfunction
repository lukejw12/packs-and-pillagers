scoreboard players set @s pnp.brick_timer 0

summon armor_stand ~ ~1 ~ {attributes:[{id:"minecraft:scale",base:0.01}],Tags:["brick_item","produced_item","brick_factory_card"],Motion:[0.0,0.1,0.0],Passengers:[{id:"minecraft:item_display",item_display:"fixed",Rotation:[0F,90F],Tags:["produced_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"pnp:cards/pink-structures/brick_factory"}}}]}
execute store result score #random pnp.temp run random value 0..19
execute if score #random pnp.temp matches 0 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.1
execute if score #random pnp.temp matches 1 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.09
execute if score #random pnp.temp matches 2 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.08
execute if score #random pnp.temp matches 3 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.07
execute if score #random pnp.temp matches 4 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.06
execute if score #random pnp.temp matches 5 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.05
execute if score #random pnp.temp matches 6 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.04
execute if score #random pnp.temp matches 7 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.03
execute if score #random pnp.temp matches 8 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.02
execute if score #random pnp.temp matches 9 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value -0.01
execute if score #random pnp.temp matches 10 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.01
execute if score #random pnp.temp matches 11 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.02
execute if score #random pnp.temp matches 12 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.03
execute if score #random pnp.temp matches 13 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.04
execute if score #random pnp.temp matches 14 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.05
execute if score #random pnp.temp matches 15 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.06
execute if score #random pnp.temp matches 16 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.07
execute if score #random pnp.temp matches 17 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.08
execute if score #random pnp.temp matches 18 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.09
execute if score #random pnp.temp matches 19 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[0] set value 0.1

execute store result score #random pnp.temp run random value 0..19
execute if score #random pnp.temp matches 0 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.1
execute if score #random pnp.temp matches 1 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.09
execute if score #random pnp.temp matches 2 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.08
execute if score #random pnp.temp matches 3 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.07
execute if score #random pnp.temp matches 4 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.06
execute if score #random pnp.temp matches 5 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.05
execute if score #random pnp.temp matches 6 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.04
execute if score #random pnp.temp matches 7 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.03
execute if score #random pnp.temp matches 8 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.02
execute if score #random pnp.temp matches 9 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value -0.01
execute if score #random pnp.temp matches 10 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.01
execute if score #random pnp.temp matches 11 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.02
execute if score #random pnp.temp matches 12 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.03
execute if score #random pnp.temp matches 13 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.04
execute if score #random pnp.temp matches 14 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.05
execute if score #random pnp.temp matches 15 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.06
execute if score #random pnp.temp matches 16 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.07
execute if score #random pnp.temp matches 17 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.08
execute if score #random pnp.temp matches 18 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.09
execute if score #random pnp.temp matches 19 run data modify entity @e[tag=brick_item,limit=1,sort=nearest] Motion[2] set value 0.1

tag @e[tag=brick_item] remove brick_item

playsound block.stone.place master @a ~ ~ ~ 0.5 1.2