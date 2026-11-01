data modify entity @s item.components."minecraft:custom_data".bt set from storage pnp:board cbx.bt
execute store result score @s pnp.bcount run data get storage pnp:board cbx.n
data remove storage pnp:board cbx
function pnp:logistics/label/update
