particle minecraft:explosion_emitter ~ ~0.3 ~ 0 0 0 0 1
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 0.8 1
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.anchor.exploded",fallback:"The Respawn Anchor exploded! It only works on the Nether table.",color:"red"}
function pnp:card/remove
