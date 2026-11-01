execute unless score @s pnp.born matches -2147483648.. run scoreboard players operation @s pnp.born = #day pnp.tmp
scoreboard players operation #age pnp.tmp = #day pnp.tmp
scoreboard players operation #age pnp.tmp -= @s pnp.born
