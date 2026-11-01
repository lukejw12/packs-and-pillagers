data modify storage pnp:board wsy.id set from entity @s item.components."minecraft:custom_data".wp.id
execute if data storage pnp:board wsy.id run function pnp:waystone/name_sync_for_id with storage pnp:board wsy
