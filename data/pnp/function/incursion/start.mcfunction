function pnp:board/plot/get_coords
function pnp:incursion/spawn with storage pnp:board tmp
scoreboard players set @s pnp.raid 1
scoreboard players set @s pnp.rkind 3
function pnp:coop/mates
title @a[tag=pnp.mate] title {translate:"pnp.incursion.title",fallback:"Portal Incursion",color:"dark_red"}
title @a[tag=pnp.mate] subtitle {translate:"pnp.incursion.subtitle",fallback:"Something is coming through your portal",color:"red"}
playsound minecraft:block.portal.trigger master @a[tag=pnp.mate] ~ ~ ~ 0.6 0.8
