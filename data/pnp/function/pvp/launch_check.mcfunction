$execute unless data storage pnp:pvp a$(p).units[0] run return run title @s actionbar {text:"No fighters were left on the portal.",color:"yellow"}
scoreboard players operation @s pnp.patk = #tp pnp.tmp
scoreboard players set @s pnp.pvst 1
scoreboard players set @s pnp.pvpm 0
tellraw @s [{text:"Your fighters charge through the portal to ",color:"red"},{selector:"@a[tag=pnp.ptgt,limit=1]"},{text:"'s table!",color:"red"}]
title @a[tag=pnp.ptgt] times 5 60 15
title @a[tag=pnp.ptgt] subtitle [{selector:"@s"},{text:"'s fighters are coming!",color:"gray"}]
title @a[tag=pnp.ptgt] title {text:"Incoming attack!",color:"dark_red"}
execute as @a[tag=pnp.ptgt] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.8 0.7
