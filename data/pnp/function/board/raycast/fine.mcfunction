execute if block ~ ~ ~ #pnp:table run return run function pnp:board/raycast/hit
scoreboard players add #steps pnp.tmp 1
execute if score #steps pnp.tmp matches ..110 positioned ^ ^ ^0.1 run function pnp:board/raycast/fine
