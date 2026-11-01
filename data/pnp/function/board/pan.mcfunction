scoreboard players set #max pnp.tmp 250
execute if predicate pnp:movement/jump run scoreboard players set #max pnp.tmp 600
scoreboard players set #tf pnp.tmp 0
scoreboard players set #ts pnp.tmp 0
execute if predicate pnp:movement/forward run scoreboard players operation #tf pnp.tmp += #max pnp.tmp
execute if predicate pnp:movement/backwards run scoreboard players operation #tf pnp.tmp -= #max pnp.tmp
execute if predicate pnp:movement/left run scoreboard players operation #ts pnp.tmp += #max pnp.tmp
execute if predicate pnp:movement/right run scoreboard players operation #ts pnp.tmp -= #max pnp.tmp
execute unless score #tf pnp.tmp matches 0 run function pnp:board/glide/stop
execute unless score #ts pnp.tmp matches 0 run function pnp:board/glide/stop
scoreboard players operation #d pnp.tmp = #tf pnp.tmp
scoreboard players operation #d pnp.tmp -= @s pnp.vf
execute if score #d pnp.tmp matches 61.. run scoreboard players set #d pnp.tmp 60
execute if score #d pnp.tmp matches ..-61 run scoreboard players set #d pnp.tmp -60
scoreboard players operation @s pnp.vf += #d pnp.tmp
scoreboard players operation #d pnp.tmp = #ts pnp.tmp
scoreboard players operation #d pnp.tmp -= @s pnp.vs
execute if score #d pnp.tmp matches 61.. run scoreboard players set #d pnp.tmp 60
execute if score #d pnp.tmp matches ..-61 run scoreboard players set #d pnp.tmp -60
scoreboard players operation @s pnp.vs += #d pnp.tmp
scoreboard players set #ty pnp.tmp 6900
execute if predicate pnp:movement/jump run scoreboard players set #ty pnp.tmp 7600
execute if predicate pnp:movement/sprint unless predicate pnp:movement/jump run scoreboard players set #ty pnp.tmp 6680
execute on vehicle store result score #cy pnp.tmp run data get entity @s Pos[1] 100
scoreboard players operation #dd pnp.tmp = #ty pnp.tmp
scoreboard players operation #dd pnp.tmp -= #cy pnp.tmp
scoreboard players operation #dy pnp.tmp = #dd pnp.tmp
scoreboard players operation #dy pnp.tmp /= #5 pnp.tmp
execute if score #dd pnp.tmp matches -4..4 run scoreboard players operation #dy pnp.tmp = #dd pnp.tmp
execute if score @s pnp.vf matches 0 if score @s pnp.vs matches 0 if score #dy pnp.tmp matches 0 run return 0
execute store result storage pnp:board cam.f double 0.001 run scoreboard players get @s pnp.vf
execute store result storage pnp:board cam.s double 0.001 run scoreboard players get @s pnp.vs
execute store result storage pnp:board cam.y double 0.01 run scoreboard players get #dy pnp.tmp
function pnp:board/move_camera with storage pnp:board cam
