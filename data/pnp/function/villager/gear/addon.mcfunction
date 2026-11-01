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
