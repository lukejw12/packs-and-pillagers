data remove storage pnp:board mp
data modify storage pnp:board mp.id set from entity @s item.components."minecraft:custom_data".card
function pnp:machine/ports/counts with storage pnp:board mp
return run scoreboard players get #mout pnp.tmp
