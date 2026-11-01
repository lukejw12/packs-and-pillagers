scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set #riding pnp.tmp 0
execute on vehicle if entity @s[tag=pnp.camera] run scoreboard players set #riding pnp.tmp 1
execute if score #riding pnp.tmp matches 0 run return run function pnp:supper/animation/abort
scoreboard players operation #sk pnp.tmp = @s pnp.svk
scoreboard players operation #j pnp.tmp = #sk pnp.tmp
scoreboard players remove #j pnp.tmp 1
scoreboard players set #c2 pnp.tmp 2
scoreboard players set #dmove pnp.tmp 20
scoreboard players set #dfly pnp.tmp 12
scoreboard players set #ddwell pnp.tmp 16
execute if score #j pnp.tmp matches 1.. run function pnp:supper/animation/halve_time
execute if score #dmove pnp.tmp matches ..0 run scoreboard players set #dmove pnp.tmp 1
execute if score #dfly pnp.tmp matches ..0 run scoreboard players set #dfly pnp.tmp 1
execute if score #ddwell pnp.tmp matches ..0 run scoreboard players set #ddwell pnp.tmp 1
execute if score @s pnp.sph matches 0 run return run function pnp:supper/animation/move
execute if score @s pnp.sph matches 1 run return run function pnp:supper/animation/feed
execute if score @s pnp.sph matches 2 run return run function pnp:supper/animation/dwell
