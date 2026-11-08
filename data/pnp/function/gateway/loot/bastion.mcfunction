execute positioned ~-1.6 ~ ~-0.8 run function pnp:card/spawn {card:"gold_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..60 positioned ~0 ~ ~-0.8 run function pnp:card/spawn {card:"gold_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..40 positioned ~1.6 ~ ~-0.8 run function pnp:card/spawn {card:"crying_obsidian"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..20 positioned ~3.2 ~ ~-0.8 run function pnp:card/spawn {card:"golden_helmet"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..15 positioned ~-1.6 ~ ~0.8 run function pnp:card/spawn {card:"pigstep"}
