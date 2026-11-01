scoreboard players operation #me pnp.tmp = @s pnp.pid
execute unless items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}] if score @s pnp.sls matches 2 run return run function pnp:selection/cancel
execute unless items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pnp:{selector:1b}}] if score @s pnp.sls matches 1 run return run function pnp:selection/reset
function pnp:selection/cursor_block
execute unless entity @e[type=marker,tag=pnp.mycur] run return 0
execute if score @s pnp.sls matches 1 run function pnp:selection/rectangle
execute if score @s pnp.sls matches 1 run return run function pnp:selection/box/draw
execute store result score #cx pnp.tmp run data get entity @e[type=marker,tag=pnp.mycur,limit=1] Pos[0] 1000
execute store result score #cz pnp.tmp run data get entity @e[type=marker,tag=pnp.mycur,limit=1] Pos[2] 1000
execute in pnp:board as @e[type=item_display,tag=pnp.selg] if score @s pnp.selp = #me pnp.tmp run function pnp:selection/follow
scoreboard players operation #mx pnp.tmp = #cx pnp.tmp
scoreboard players operation #mx pnp.tmp -= @s pnp.scx
scoreboard players operation #mx pnp.tmp /= #10 pnp.tmp
scoreboard players operation #mz pnp.tmp = #cz pnp.tmp
scoreboard players operation #mz pnp.tmp -= @s pnp.scz
scoreboard players operation #mz pnp.tmp /= #10 pnp.tmp
scoreboard players operation #X1 pnp.tmp = @s pnp.srx1
scoreboard players operation #X1 pnp.tmp += #mx pnp.tmp
scoreboard players operation #X2 pnp.tmp = @s pnp.srx2
scoreboard players operation #X2 pnp.tmp += #mx pnp.tmp
scoreboard players operation #Z1 pnp.tmp = @s pnp.srz1
scoreboard players operation #Z1 pnp.tmp += #mz pnp.tmp
scoreboard players operation #Z2 pnp.tmp = @s pnp.srz2
scoreboard players operation #Z2 pnp.tmp += #mz pnp.tmp
function pnp:selection/box/draw
