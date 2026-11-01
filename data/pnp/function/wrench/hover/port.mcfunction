scoreboard players operation #pu pnp.tmp = @s pnp.puid
data modify storage pnp:board hp.io set value "Output"
execute if entity @s[tag=pnp.port_in] run data modify storage pnp:board hp.io set value "Input"
execute at @s as @e[type=item_display,tag=pnp.card,distance=..2] if score @s pnp.uid = #pu pnp.tmp run data modify storage pnp:board hp.card set from entity @s item.components."minecraft:custom_data".card
function pnp:wrench/hover/message with storage pnp:board hp
