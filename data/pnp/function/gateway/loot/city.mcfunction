execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~-0.8 run function pnp:card/spawn {card:"echo_shard"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~-0.8 run function pnp:card/spawn {card:"diamond"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..40 positioned ~0.8 ~ ~-0.8 run function pnp:card/spawn {card:"diamond"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..20 positioned ~2.4 ~ ~-0.8 run function pnp:card/spawn {card:"diamond_chestplate"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..40 positioned ~-2.4 ~ ~1.0 run function pnp:card/spawn {card:"golden_apple"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..25 positioned ~-0.8 ~ ~1.0 run function pnp:card/spawn {card:"compass"}
