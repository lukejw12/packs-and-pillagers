scoreboard players remove @s pnp.regen 1
data modify storage pnp:board pdr.u set from entity @s item.components."minecraft:custom_data".card
function pnp:progression/regen_heal with storage pnp:board pdr
execute if score @s pnp.regen matches 1.. run return 0
tag @s remove pnp.regen
execute on passengers if entity @s[tag=pnp.eff_icon] run kill @s
