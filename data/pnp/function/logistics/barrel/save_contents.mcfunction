data remove storage pnp:board cbx
execute unless score @s pnp.bcount matches 1.. run return 0
data modify storage pnp:board cbx.bt set from entity @s item.components."minecraft:custom_data".bt
execute store result storage pnp:board cbx.n int 1 run scoreboard players get @s pnp.bcount
