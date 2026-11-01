execute unless data entity @s item.components."minecraft:custom_data".flt run return run execute on passengers if entity @s[tag=pnp.licon] run item replace entity @s contents with minecraft:air
data modify storage pnp:board lb.c set from entity @s item.components."minecraft:custom_data".flt
function pnp:logistics/label/icon with storage pnp:board lb
data modify storage pnp:board acr set from entity @s item.components."minecraft:custom_data".ar
data modify storage pnp:board acb set from entity @s item.components."minecraft:custom_data".ab
scoreboard players set #lh pnp.tmp 0
scoreboard players set #ln pnp.tmp 0
execute if data storage pnp:board acr.ids[0] run function pnp:logistics/autocrafter/label {i:0}
execute if data storage pnp:board acr.ids[1] run function pnp:logistics/autocrafter/label {i:1}
execute if data storage pnp:board acr.ids[2] run function pnp:logistics/autocrafter/label {i:2}
execute if data storage pnp:board acr.ids[3] run function pnp:logistics/autocrafter/label {i:3}
execute store result storage pnp:board lb.h int 1 run scoreboard players get #lh pnp.tmp
execute store result storage pnp:board lb.n int 1 run scoreboard players get #ln pnp.tmp
function pnp:logistics/label/autocrafter_with_count with storage pnp:board lb
