scoreboard players set @s pnp.ntick 0
data remove storage pnp:board lbe
data modify storage pnp:board lbn set from entity @s item.components."minecraft:custom_data".lb
function pnp:linkbarrel/pull_at with storage pnp:board lbn
execute if data storage pnp:board lbe.c run function pnp:api/machine/emit with storage pnp:board lbe
