execute as @e[type=item_display,tag=pnp.gw_used] run function pnp:card/remove
function pnp:coop/mates
execute store result storage pnp:board gf.p int 1 run scoreboard players get @s pnp.tpid
function pnp:redstone_caves/chapter_one_flags with storage pnp:board gf
title @a[tag=pnp.mate] times 10 100 30
title @a[tag=pnp.mate] subtitle {translate:"pnp.common.humble_beginnings",fallback:"Humble Beginnings",color:"gray"}
title @a[tag=pnp.mate] title {translate:"pnp.common.chapter_1_complete",fallback:"Chapter 1 Complete",color:"gold",bold:true}
execute as @a[tag=pnp.mate] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=pnp.mate] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.4 1.4
tellraw @a[tag=pnp.mate] [{text:"",extra:[{translate:"pnp.common.chapter_1_complete_2",fallback:"Chapter 1 complete!"}," "],color:"gold",bold:true},{translate:"pnp.common.chapter_2_is_on_its_way",fallback:"Chapter 2 is on its way in a future update.",color:"gray",bold:false}]
execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
data modify storage pnp:board qk.qk set value "delve"
function pnp:quest/on_event with storage pnp:board qk
execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
data modify storage pnp:board qk.qk set value "rm_dead"
function pnp:quest/on_event with storage pnp:board qk
execute as @a[tag=pnp.mate,tag=pnp.in_board] run function pnp:music/stinger {s:"pnp:music.chapter_complete",t:360}
