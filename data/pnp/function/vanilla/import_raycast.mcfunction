execute if block ~ ~ ~ minecraft:barrel align xyz run return run function pnp:vanilla/import_at
scoreboard players add #ray pnp.tmp 1
execute if score #ray pnp.tmp matches 20.. run return 0
execute unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ minecraft:water run return 0
execute positioned ^ ^ ^0.25 run function pnp:vanilla/import_raycast
