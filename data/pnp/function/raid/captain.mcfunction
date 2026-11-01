scoreboard players set @s pnp.craid 0
execute unless score @s pnp.rlvl matches 1.. run scoreboard players set @s pnp.rlvl 1
scoreboard players add @s pnp.rlvl 1
function pnp:raid/ladder/raid
scoreboard players remove @s pnp.rlvl 1
title @a[tag=pnp.mate] times 5 60 15
title @a[tag=pnp.mate] subtitle {text:"Tougher than usual, just this once",color:"gray"}
title @a[tag=pnp.mate] title {text:"Captain's Raid!",color:"dark_red"}
