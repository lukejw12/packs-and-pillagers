execute if score #mclk pnp.tmp matches 0 run function pnp:music/stop_vanilla
execute if score #mclk pnp.tmp matches 10 run function pnp:music/stop_vanilla
scoreboard players remove @s pnp.mt 1
execute if score #mclk pnp.tmp matches 0 if score @s pnp.mt matches 1.. run function pnp:music/context
execute if score @s pnp.mt matches ..0 run function pnp:music/next
