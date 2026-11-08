$execute store result score #sok pnp.tmp run function pnp:progression/study_pick {p:$(p)}
execute if score #sok pnp.tmp matches 1 run return 1
function pnp:card/pop {card:"paper"}
function pnp:card/pop {card:"paper"}
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.study.nothing",fallback:"Nothing new to study yet.",color:"gray"}
return 1
