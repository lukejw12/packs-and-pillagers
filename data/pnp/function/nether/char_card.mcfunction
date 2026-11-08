execute at @s if entity @e[type=item_display,tag=pnp.c.ice,distance=..1.8] if function pnp:nether/ice_slow run return 0
execute store result score #chx pnp.tmp run data get entity @s Pos[0]
scoreboard players operation #chb pnp.tmp = #chx pnp.tmp
scoreboard players operation #chb pnp.tmp /= #1024 pnp.tmp
scoreboard players operation #chb pnp.tmp *= #1024 pnp.tmp
scoreboard players operation #chx pnp.tmp -= #chb pnp.tmp
execute if score #chx pnp.tmp matches ..699 run return 0
scoreboard players add @s pnp.char 1
execute if entity @s[tag=pnp.c.charred_food] if score @s pnp.char matches 4.. run return run function pnp:nether/char_ash
execute if score @s pnp.char matches 4.. run function pnp:nether/char_food with entity @s item.components."minecraft:custom_data"
