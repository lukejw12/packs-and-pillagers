tag @s remove pnp.crown
execute if data entity @s item.components."minecraft:custom_data".eq{a:"wildfire_crown"} run tag @s add pnp.crown
tag @s remove pnp.gold
execute if data entity @s item.components."minecraft:custom_data".eq{a:"golden_helmet"} run tag @s add pnp.gold
scoreboard players set #gatk pnp.tmp 0
scoreboard players set #ghp pnp.tmp 0
data remove storage pnp:board gid
data modify storage pnp:board gid.id set from entity @s item.components."minecraft:custom_data".eq.t
execute if data storage pnp:board gid.id run function pnp:villager/gear/addon_slot with storage pnp:board gid
data remove storage pnp:board gid
data modify storage pnp:board gid.id set from entity @s item.components."minecraft:custom_data".eq.a
execute if data storage pnp:board gid.id run function pnp:villager/gear/addon_slot with storage pnp:board gid
data remove storage pnp:board gid
data modify storage pnp:board gid.id set from entity @s item.components."minecraft:custom_data".eq.s
execute if data storage pnp:board gid.id run function pnp:villager/gear/addon_slot with storage pnp:board gid
execute if score @s pnp.bhp matches 1.. run scoreboard players operation #ghp pnp.tmp += @s pnp.bhp
execute if score @s pnp.strb matches 1.. run scoreboard players operation #gatk pnp.tmp += @s pnp.strb
