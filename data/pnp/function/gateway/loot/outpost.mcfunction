execute positioned ~-1.6 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute positioned ~0 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..40 positioned ~1.6 ~ ~-0.8 run function pnp:card/spawn {card:"crossbow"}
