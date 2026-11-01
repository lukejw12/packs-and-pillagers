execute if entity @s[tag=pnp.slow] unless score #g5 pnp.tmp matches 0 run return 0
scoreboard players remove @s pnp.life 1
execute if score @s pnp.fuse matches 1 run data modify entity @s item.components."minecraft:item_model" set value "pnp:card/illusioner_illusion"
execute if score @s pnp.fuse matches 1.. run scoreboard players remove @s pnp.fuse 1
execute if score @s pnp.life matches ..0 at @s run function pnp:gateway/illusioner/vanish
