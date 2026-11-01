execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~-0.8 run function pnp:card/spawn {card:"emerald_block"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..30 positioned ~0.8 ~ ~-0.8 run function pnp:card/spawn {card:"totem"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..40 positioned ~2.4 ~ ~-0.8 run function pnp:card/spawn {card:"crossbow"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..50 positioned ~-2.4 ~ ~1.0 run function pnp:card/spawn {card:"iron_sword"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..20 positioned ~-0.8 ~ ~1.0 run function pnp:card/spawn {card:"rabbit_foot"}
