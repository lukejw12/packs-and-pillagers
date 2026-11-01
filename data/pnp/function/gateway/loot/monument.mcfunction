execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~-0.8 run function pnp:card/spawn {card:"prismarine_shard"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~-0.8 run function pnp:card/spawn {card:"cod"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~0.8 ~ ~-0.8 run function pnp:card/spawn {card:"cod"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..70 positioned ~2.4 ~ ~-0.8 run function pnp:card/spawn {card:"gold_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..35 positioned ~-2.4 ~ ~1.0 run function pnp:card/spawn {card:"trident"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..25 positioned ~-0.8 ~ ~1.0 run function pnp:card/spawn {card:"golden_apple"}
