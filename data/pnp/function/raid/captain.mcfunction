scoreboard players set @s pnp.craid 0
execute unless score @s pnp.rlvl matches 1.. run scoreboard players set @s pnp.rlvl 1
scoreboard players add @s pnp.rlvl 1
function pnp:raid/ladder/raid
scoreboard players remove @s pnp.rlvl 1
title @a[tag=pnp.mate] times 5 60 15
title @a[tag=pnp.mate] subtitle {translate:"pnp.raid.tougher_than_usual_just_this_once",fallback:"Tougher than usual, just this once",color:"gray"}
title @a[tag=pnp.mate] title {translate:"pnp.raid.captain_s_raid",fallback:"Captain's Raid!",color:"dark_red"}
