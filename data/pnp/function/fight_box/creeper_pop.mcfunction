particle minecraft:poof ~ ~0.2 ~ 0.25 0.1 0.25 0.02 14
particle minecraft:crit ~ ~0.2 ~ 0.3 0.1 0.3 0.2 10
playsound minecraft:entity.creeper.death hostile @a[distance=..32] ~ ~ ~ 1 1
function pnp:card/pop {card:"gunpowder"}
title @a[distance=..16,limit=1,sort=nearest] actionbar {text:"You took the creeper down before it blew. It dropped Gunpowder.",color:"green"}
function pnp:card/remove
