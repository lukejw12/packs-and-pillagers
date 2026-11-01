scoreboard players set @s pnp.fprog 0
scoreboard players remove @s pnp.ffuel 1
data modify storage pnp:board fs.c set from entity @s item.components."minecraft:custom_data".fq[0]
data remove entity @s item.components."minecraft:custom_data".fq[0]
function pnp:logistics/furnace/output with storage pnp:board fs
function pnp:logistics/label/update
playsound minecraft:block.furnace.fire_crackle block @a[distance=..24] ~ ~ ~ 0.6 1
