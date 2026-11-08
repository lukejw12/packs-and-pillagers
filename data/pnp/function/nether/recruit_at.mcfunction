function pnp:card/spawn {card:"piglin_ally"}
particle minecraft:heart ~ ~0.4 ~ 0.2 0.1 0.2 0 5
playsound minecraft:entity.piglin.celebrate neutral @a[distance=..24] ~ ~ ~ 0.7 1
tag @s remove pnp.dt
function pnp:card/remove
