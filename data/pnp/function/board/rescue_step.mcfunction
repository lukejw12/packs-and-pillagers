scoreboard players add #rs pnp.tmp 1
execute if block ~ ~-0.5 ~ #pnp:felt positioned ^ ^ ^0.6 if block ~ ~-0.5 ~ #pnp:felt run return run function pnp:board/rescue_place
execute if score #rs pnp.tmp matches ..160 positioned ^ ^ ^0.25 run function pnp:board/rescue_step
