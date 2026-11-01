execute store result storage pnp:board lb.q int 1 run data get entity @s item.components."minecraft:custom_data".hb
function pnp:logistics/label/hopper_with_queue with storage pnp:board lb
execute unless data entity @s item.components."minecraft:custom_data".flt run return run execute on passengers if entity @s[tag=pnp.licon] run item replace entity @s contents with minecraft:air
data modify storage pnp:board lb.c set from entity @s item.components."minecraft:custom_data".flt
function pnp:logistics/label/icon with storage pnp:board lb
