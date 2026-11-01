function pnp:card/spawn {card:"illusioner"}
execute as @e[type=item_display,tag=pnp.c.illusioner,tag=!pnp.boss,tag=!pnp.illusion,distance=..0.5,limit=1,sort=nearest] run function pnp:gateway/illusioner/setup
