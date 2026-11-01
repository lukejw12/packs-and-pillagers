function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:fight/evoker/spawn with storage pnp:board tmp
scoreboard players set #rn pnp.tmp 4
function pnp:raid/loop
scoreboard players set @s pnp.raid 1
title @a[tag=pnp.mate] times 5 50 15
title @a[tag=pnp.mate] subtitle {text:"Beat the Evoker before its vexes swarm you",color:"gray"}
title @a[tag=pnp.mate] title {text:"Evoker raid!",color:"dark_red"}
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.8 0.8
execute unless entity @s[tag=pnp.in_board] run tellraw @a[tag=pnp.mate] {text:"Raiders are heading for your board! While it's closed they move slowly, so you have a few minutes to get back.",color:"red"}
