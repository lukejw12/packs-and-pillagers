$execute unless data storage pnp:pvp a$(p).units[0] run return run title @s actionbar {translate:"pnp.pvp.no_fighters_were_left_on_the",fallback:"No fighters were left on the portal.",color:"yellow"}
scoreboard players operation @s pnp.patk = #tp pnp.tmp
scoreboard players set @s pnp.pvst 1
scoreboard players set @s pnp.pvpm 0
tellraw @s [{text:"",extra:[{translate:"pnp.pvp.your_fighters_charge_through_the_portal",fallback:"Your fighters charge through the portal to"}," "],color:"red"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{translate:"pnp.pvp.s_table",fallback:"'s table!",color:"red"}]
title @a[tag=pnp.ptgt] times 5 60 15
title @a[tag=pnp.ptgt] subtitle [{selector:"@s"},{translate:"pnp.pvp.s_fighters_are_coming",fallback:"'s fighters are coming!",color:"gray"}]
title @a[tag=pnp.ptgt] title {translate:"pnp.pvp.incoming_attack",fallback:"Incoming attack!",color:"dark_red"}
execute as @a[tag=pnp.ptgt] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.8 0.7
