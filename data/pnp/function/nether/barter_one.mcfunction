function pnp:card/remove
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~ 65.01 ~1.2 run function pnp:card/pool/pick {p:"barter"}
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run particle minecraft:happy_villager ~ ~0.3 ~ 0.2 0.1 0.2 0 4
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s run playsound minecraft:entity.piglin.admiring_item neutral @a[distance=..24] ~ ~ ~ 0.6 1
execute as @e[type=item_display,tag=pnp.dt,limit=1] run function pnp:chapter2/event_at {qk:"c2_barter"}
