function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:raid/table_age
execute if score #age pnp.tmp matches ..2 run return 0
scoreboard players set #np pnp.tmp 2
scoreboard players set #nv pnp.tmp 0
execute if score #age pnp.tmp matches 6.. run scoreboard players set #np pnp.tmp 3
execute if score #age pnp.tmp matches 10.. run scoreboard players set #nv pnp.tmp 1
execute if score #age pnp.tmp matches 15.. run scoreboard players set #np pnp.tmp 4
execute if score #age pnp.tmp matches 15.. run scoreboard players set #nv pnp.tmp 2
scoreboard players operation #ln pnp.tmp = #np pnp.tmp
function pnp:raid/ladder/spawn {enemy:"pillager"}
scoreboard players operation #ln pnp.tmp = #nv pnp.tmp
function pnp:raid/ladder/spawn {enemy:"vindicator"}
scoreboard players set @s pnp.raid 1
scoreboard players set @s pnp.rkind 2
title @a[tag=pnp.mate] actionbar {translate:"pnp.raid.a_patrol_is_heading_for_your",fallback:"A patrol is heading for your board!",color:"red"}
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.3 1.6
execute unless entity @s[tag=pnp.in_board] run tellraw @a[tag=pnp.mate] {translate:"pnp.common.raiders_are_heading_for_your_board",fallback:"Raiders are heading for your board! While it's closed they move slowly, so you have a few minutes to get back.",color:"red"}
