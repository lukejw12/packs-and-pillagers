tag @s add pnp.lampgone
execute if block ~ ~ ~ minecraft:light unless entity @e[type=marker,tag=pnp.lamp,tag=!pnp.lampgone,distance=..0.1] run setblock ~ ~ ~ minecraft:air
execute if entity @e[type=marker,tag=pnp.lamp10,tag=!pnp.lampgone,distance=..0.1] run setblock ~ ~ ~ minecraft:light[level=10]
execute if entity @e[type=marker,tag=pnp.lamp6,tag=!pnp.lampgone,distance=..0.1] unless entity @e[type=marker,tag=pnp.lamp10,tag=!pnp.lampgone,distance=..0.1] run setblock ~ ~ ~ minecraft:light[level=6]
kill @s
