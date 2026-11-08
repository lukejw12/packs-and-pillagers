function pnp:card/spawn {card:"zoglin"}
particle minecraft:smoke ~ ~0.4 ~ 0.25 0.2 0.25 0.02 15
playsound minecraft:entity.hoglin.converted_to_zombified master @a[distance=..24] ~ ~ ~ 0.8 1
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.nether.zoglin",fallback:"The Hoglin turned into a Zoglin!",color:"red"}
function pnp:card/remove
