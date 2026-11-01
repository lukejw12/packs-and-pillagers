execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..50 positioned ~0.8 ~ ~-0.8 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..60 positioned ~2.4 ~ ~-0.8 run function pnp:card/spawn {card:"iron_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..50 positioned ~-2.4 ~ ~1.0 run function pnp:card/spawn {card:"copper_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..35 positioned ~-0.8 ~ ~1.0 run function pnp:card/spawn {card:"gold_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..15 positioned ~0.8 ~ ~1.0 run function pnp:card/spawn {card:"golden_apple"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..10 positioned ~2.4 ~ ~1.0 run function pnp:card/spawn {card:"diamond"}
