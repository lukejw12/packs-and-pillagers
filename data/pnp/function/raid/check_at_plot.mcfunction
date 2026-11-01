function pnp:coop/mates
$execute in pnp:board positioned $(cx) 65 16 if entity @e[type=item_display,tag=pnp.k.enemy,distance=..23] run return 0
scoreboard players set @s pnp.raid 0
execute if score @s pnp.rkind matches 1 run function pnp:raid/ladder/win
scoreboard players set @s pnp.rkind 0
title @a[tag=pnp.mate] actionbar {translate:"pnp.raid.raid_defeated",fallback:"Raid defeated!",color:"green"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.4 1.6
