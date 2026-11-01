execute unless score @s pnp.bsize matches 1.. run scoreboard players set @s pnp.bsize 4
scoreboard players operation @s pnp.msz = @s pnp.bsize
scoreboard players operation @s pnp.msz *= #2 pnp.tmp
scoreboard players add @s pnp.msz 16
