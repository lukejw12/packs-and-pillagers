execute if score @s pnp.stm matches 0 run function pnp:supper/animation/move_start
execute unless score @s pnp.sph matches 0 run return 0
scoreboard players add @s pnp.stm 1
execute if score @s pnp.stm >= #dmove pnp.tmp run function pnp:supper/to_feed
