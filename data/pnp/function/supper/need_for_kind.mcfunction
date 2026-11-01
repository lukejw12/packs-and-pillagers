scoreboard players set #kx pnp.tmp 0
scoreboard players set #rk pnp.tmp 2
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #k pnp.tmp run scoreboard players set #kx pnp.tmp 1
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #k pnp.tmp if entity @s[tag=pnp.c.baby_villager] run scoreboard players set #rk pnp.tmp 1
