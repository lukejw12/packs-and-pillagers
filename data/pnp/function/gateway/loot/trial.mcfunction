execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-2.4 ~ ~-0.8 run function pnp:card/spawn {card:"trial_key"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..100 positioned ~-0.8 ~ ~-0.8 run function pnp:card/spawn {card:"iron_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..60 positioned ~0.8 ~ ~-0.8 run function pnp:card/spawn {card:"iron_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..35 positioned ~2.4 ~ ~-0.8 run function pnp:card/spawn {card:"crossbow"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..15 positioned ~-2.4 ~ ~1.0 run function pnp:card/spawn {card:"mace"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..30 positioned ~-0.8 ~ ~1.0 run function pnp:card/spawn {card:"golden_apple"}
