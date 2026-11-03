function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:fight/evoker/spawn with storage pnp:board tmp
scoreboard players set #rn pnp.tmp 4
function pnp:raid/loop
scoreboard players set @s pnp.raid 1
title @a[tag=pnp.mate] times 5 50 15
title @a[tag=pnp.mate] subtitle {translate:"pnp.fight.beat_the_evoker_before_its_vexes",fallback:"Beat the Evoker before its Vexes swarm you",color:"gray"}
title @a[tag=pnp.mate] title {translate:"pnp.fight.evoker_raid",fallback:"Evoker raid!",color:"dark_red"}
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.8 0.8
execute unless entity @s[tag=pnp.in_board] run tellraw @a[tag=pnp.mate] {translate:"pnp.common.raiders_are_heading_for_your_board",fallback:"Raiders are heading for your board! They move slowly while it's closed, so you've got a few minutes to get back.",color:"red"}
