execute if entity @s[tag=pnp.c.autocrafter] if data entity @s item.components."minecraft:custom_data".ar run return run function pnp:route/accept/autocrafter
execute if entity @s[tag=pnp.c.hopper] if data entity @s item.components."minecraft:custom_data".flt run return run function pnp:route/dedicated_filter
execute if entity @s[tag=pnp.c.barrel] if data entity @s item.components."minecraft:custom_data".bt run return run function pnp:route/dedicated_type
return fail
