execute if entity @s[tag=pnp.c.barrel] run return run function pnp:route/accept/barrel
execute if entity @s[tag=pnp.c.furnace] run return run function pnp:route/accept/furnace with storage pnp:board rt
execute if entity @s[tag=pnp.c.autocrafter] run return run function pnp:route/accept/autocrafter
execute if entity @s[tag=pnp.c.hopper] run return run function pnp:route/accept/hopper
execute if entity @s[tag=pnp.c.sell_box] run return run function pnp:route/accept/sell with storage pnp:board rt
execute if entity @s[tag=pnp.c.bundle] run return run function pnp:route/accept/bundle with storage pnp:board rt
execute if entity @s[tag=pnp.c.dropper] run return run function pnp:route/accept/dropper
return fail
