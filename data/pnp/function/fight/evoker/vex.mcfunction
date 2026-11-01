particle minecraft:witch ~ ~0.6 ~ 0.4 0.3 0.4 0 20
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 1 1
execute positioned ~1.0 ~0.3 ~0.6 run function pnp:card/spawn {card:"vex"}
execute positioned ~-1.0 ~0.3 ~0.6 run function pnp:card/spawn {card:"vex"}
