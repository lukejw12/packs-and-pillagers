execute store result score #ready pnp.tmp if entity @e[type=marker,tag=pnp.plot_anchor,distance=..24]
execute if score #ready pnp.tmp matches 4.. run return run function pnp:board/plot/build
execute if score @s pnp.plot matches 0 run function pnp:board/plot/place_anchors
scoreboard players remove @s pnp.plot 1
execute if score @s pnp.plot matches ..-200 run scoreboard players set @s pnp.plot 0
