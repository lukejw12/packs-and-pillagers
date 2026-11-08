execute store result score #nac pnp.tmp run function pnp:api/machine/count
execute if score #nac pnp.tmp matches ..0 run return 0
function pnp:api/machine/take
function pnp:card/pop {card:"villager"}
particle minecraft:reverse_portal ~ ~0.4 ~ 0.3 0.3 0.3 0.05 30
playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..32] ~ ~ ~ 1 1
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.anchor.revived",fallback:"The Respawn Anchor brought a villager back!",color:"light_purple"}
return 1
