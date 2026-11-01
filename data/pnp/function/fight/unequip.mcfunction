data modify storage pnp:board popc.card set from entity @s item.components."minecraft:custom_data".weapon
function pnp:card/pop with storage pnp:board popc
data remove entity @s item.components."minecraft:custom_data".weapon
execute on passengers if entity @s[tag=pnp.wpn_icon] run kill @s
