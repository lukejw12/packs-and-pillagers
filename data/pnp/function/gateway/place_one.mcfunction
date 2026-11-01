$execute in pnp:board run tp @s $(x) 65.01 $(z)
scoreboard players add #stack pnp.ids 1
scoreboard players operation @s pnp.stack = #stack pnp.ids
scoreboard players set @s pnp.idx 0
tag @s remove pnp.party_new
tag @s add pnp.arena
