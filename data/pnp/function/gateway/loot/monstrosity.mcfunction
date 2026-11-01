execute store result score #lr pnp.tmp run random value 1..2
execute if score #lr pnp.tmp matches 1 positioned ~ ~ ~-1.4 run function pnp:card/spawn {card:"redstone_awakened"}
execute if score #lr pnp.tmp matches 2 positioned ~ ~ ~-1.4 run function pnp:card/spawn {card:"monstrosity_helmet"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~0.6 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~0.6 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~0.8 ~ ~0.6 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~2.4 ~ ~0.6 run function pnp:card/spawn {card:"emerald"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-1.6 ~ ~2.2 run function pnp:card/spawn {card:"diamond"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~0 ~ ~2.2 run function pnp:card/spawn {card:"golden_apple"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..50 positioned ~1.6 ~ ~2.2 run function pnp:card/spawn {card:"diamond"}
