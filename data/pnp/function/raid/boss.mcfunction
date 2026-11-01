scoreboard players set #ln pnp.tmp 1
function pnp:raid/ladder/spawn {enemy:"illusioner"}
scoreboard players operation #bhp pnp.tmp = @s pnp.rlvl
scoreboard players remove #bhp pnp.tmp 10
scoreboard players set #c34 pnp.tmp 34
scoreboard players operation #bhp pnp.tmp *= #c34 pnp.tmp
scoreboard players add #bhp pnp.tmp 135
execute in pnp:board as @e[type=item_display,tag=pnp.c.illusioner] if score @s pnp.uid = #uid pnp.ids run function pnp:raid/set_boss
title @a[tag=pnp.mate] times 5 60 15
title @a[tag=pnp.mate] subtitle {translate:"pnp.raid.the_illusioner_leads_this_raid",fallback:"The Illusioner leads this raid",color:"gray"}
