scoreboard players operation #want pnp.tmp = @s pnp.hover
execute if score #want pnp.tmp matches ..0 run scoreboard players set #want pnp.tmp 0
execute unless score @s pnp.vf matches 0 run scoreboard players set #want pnp.tmp 0
execute unless score @s pnp.vs matches 0 run scoreboard players set #want pnp.tmp 0
execute as @e[type=marker,tag=pnp.glide] if score @s pnp.pid = #me pnp.tmp run scoreboard players set #want pnp.tmp 0
execute if score #want pnp.tmp = @s pnp.tips run return run function pnp:board/tooltip/steady
execute unless score #want pnp.tmp = @s pnp.tipc run scoreboard players set @s pnp.tipt 0
scoreboard players operation @s pnp.tipc = #want pnp.tmp
scoreboard players add @s pnp.tipt 1
execute if score #want pnp.tmp matches 1.. if score @s pnp.tipt matches 6 run function pnp:board/tooltip/show_now
execute if score #want pnp.tmp matches 0 if score @s pnp.tipt matches 4 if score @s pnp.tips matches 1.. run function pnp:board/tooltip/hide_now
