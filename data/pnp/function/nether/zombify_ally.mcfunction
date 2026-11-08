tag @s remove pnp.pmv
function pnp:card/spawn {card:"zombified_piglin_ally"}
particle minecraft:smoke ~ ~0.3 ~ 0.2 0.1 0.2 0.01 12
playsound minecraft:entity.piglin.converted_to_zombified neutral @a[distance=..24] ~ ~ ~ 0.6 1
function pnp:card/remove
