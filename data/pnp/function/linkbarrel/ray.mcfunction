scoreboard players add #lbr pnp.tmp 1
execute if score #lbr pnp.tmp matches 60.. run return 0
execute if block ~ ~ ~ minecraft:barrel align xyz run return run function pnp:linkbarrel/bind_at
execute positioned ^ ^ ^0.1 run function pnp:linkbarrel/ray
