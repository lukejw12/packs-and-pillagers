execute store result score #mi pnp.tmp run random value 0..119
scoreboard players operation #mi pnp.tmp %= #mn pnp.tmp
execute if score #mi pnp.tmp = @s pnp.mtk run scoreboard players add #mi pnp.tmp 1
scoreboard players operation #mi pnp.tmp %= #mn pnp.tmp
scoreboard players operation @s pnp.mtk = #mi pnp.tmp
