scoreboard players add #wr pnp.tmp 1
execute if score #wr pnp.tmp matches 101.. run return 0
execute unless block ~ ~ ~ #minecraft:replaceable run return run function pnp:waystone/raycast_hit
execute positioned ^ ^ ^0.05 run function pnp:waystone/raycast
