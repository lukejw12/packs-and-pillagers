scoreboard players set #ok pnp.tmp 1
playsound minecraft:block.copper.step block @a[distance=..24] ~ ~ ~ 0.5 1.6
execute if entity @s[tag=pnp.cm] run return run function pnp:machine/store_rt
execute if entity @s[tag=pnp.c.barrel] run return run function pnp:route/put/barrel
execute if entity @s[tag=pnp.c.furnace] run return run function pnp:route/put/furnace with storage pnp:board rt
execute if entity @s[tag=pnp.c.autocrafter] run return run function pnp:route/put/autocrafter with storage pnp:board rt
execute if entity @s[tag=pnp.c.hopper] run return run function pnp:route/put/hopper
execute if entity @s[tag=pnp.c.dropper] run return run function pnp:route/put/hopper
execute if entity @s[tag=pnp.c.sell_box] run return run function pnp:route/put/sell with storage pnp:board rt
execute if entity @s[tag=pnp.c.bundle] run return run function pnp:route/put/bundle with storage pnp:board rt
