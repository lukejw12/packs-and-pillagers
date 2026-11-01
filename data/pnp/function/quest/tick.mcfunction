execute if data entity @s item.components."minecraft:custom_data"{qk:"have"} run function pnp:quest/have
execute if score @s pnp.qneed matches 1.. if score @s pnp.qprog >= @s pnp.qneed run function pnp:quest/complete
