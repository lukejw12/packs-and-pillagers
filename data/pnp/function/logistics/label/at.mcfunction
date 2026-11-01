execute unless function pnp:logistics/has_parts run function pnp:logistics/add_parts
execute unless function pnp:logistics/has_icon run function pnp:logistics/add_icon
execute if entity @s[tag=pnp.c.barrel] run function pnp:logistics/label/barrel
execute if entity @s[tag=pnp.c.furnace] run function pnp:logistics/label/furnace
execute if entity @s[tag=pnp.c.autocrafter] run function pnp:logistics/label/autocrafter
execute if entity @s[tag=pnp.c.hopper] run function pnp:logistics/label/hopper
execute if entity @s[tag=pnp.c.dropper] run function pnp:logistics/label/dropper
