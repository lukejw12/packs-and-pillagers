data remove storage pnp:board mach
data modify storage pnp:board mach.id set from entity @s item.components."minecraft:custom_data".card
execute if data storage pnp:board mach.id run function pnp:card/machine_sync_check with storage pnp:board mach
