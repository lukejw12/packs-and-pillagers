execute if block ~ ~ ~ #pnp:table positioned ^ ^ ^-0.5 run return run function pnp:board/raycast/fine
execute unless block ~ ~ ~ #pnp:airs run return 0
scoreboard players add #steps pnp.tmp 1
execute if score #steps pnp.tmp matches ..90 positioned ^ ^ ^0.5 run function pnp:board/raycast/coarse
