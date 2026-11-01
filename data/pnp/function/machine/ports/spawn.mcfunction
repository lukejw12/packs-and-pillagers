scoreboard players operation #pu pnp.tmp = @s pnp.uid
data remove storage pnp:board mp
data modify storage pnp:board mp.id set from entity @s item.components."minecraft:custom_data".card
function pnp:machine/ports/counts with storage pnp:board mp
scoreboard players set #mi pnp.tmp 0
function pnp:machine/ports/spawn_in
scoreboard players set #mi pnp.tmp 0
function pnp:machine/ports/spawn_out
