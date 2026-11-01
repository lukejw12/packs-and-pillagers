function pnp:coop/mates
function pnp:board/plot/get_coords
scoreboard players operation #rn pnp.tmp = #rsize pnp.tmp
function pnp:raid/size with storage pnp:board tmp
function pnp:raid/loop
scoreboard players set #evk pnp.tmp 0
execute if score #day pnp.tmp matches 4.. store result score #evk pnp.tmp run random value 1..3
execute if score #evk pnp.tmp matches 1 run function pnp:fight/evoker/spawn with storage pnp:board tmp
scoreboard players set @s pnp.raid 1
execute if score #evk pnp.tmp matches 1 run title @a[tag=pnp.mate] times 5 50 15
execute if score #evk pnp.tmp matches 1 run title @a[tag=pnp.mate] subtitle {translate:"pnp.raid.an_evoker_is_leading_them",fallback:"An Evoker is leading them",color:"gray"}
execute if score #evk pnp.tmp matches 1 run title @a[tag=pnp.mate] title {translate:"pnp.raid.illager_raid",fallback:"Illager raid!",color:"dark_red"}
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.5 1
execute unless entity @s[tag=pnp.in_board] run tellraw @a[tag=pnp.mate] {translate:"pnp.raid.raiders_are_on_their_way_they",fallback:"Raiders are on their way. They move slowly while your board is closed.",color:"red"}
