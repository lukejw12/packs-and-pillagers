function pnp:card/spawn {card:"piglin_ally"}
particle minecraft:happy_villager ~ ~0.4 ~ 0.3 0.2 0.3 0 15
playsound minecraft:entity.zombie_villager.cure master @a[distance=..24] ~ ~ ~ 0.7 1.2
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.piglin.cured",fallback:"The Zombified Piglin is a Piglin again!",color:"gold"}
function pnp:card/remove
