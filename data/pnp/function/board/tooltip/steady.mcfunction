scoreboard players operation @s pnp.tipc = #want pnp.tmp
execute if score #want pnp.tmp matches 0 run return 0
scoreboard players add @s pnp.tipr 1
execute if score @s pnp.tipr matches 10 run function pnp:night/hover_ring
execute if score @s pnp.tipr matches 20.. run function pnp:night/hover_ring
execute if score @s pnp.tipr matches 20.. run function pnp:board/tooltip/refresh
execute if score @s pnp.tipr matches 20.. run scoreboard players set @s pnp.tipr 0
