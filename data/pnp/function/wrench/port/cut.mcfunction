scoreboard players operation #phv pnp.tmp = @s pnp.ph
execute as @e[type=item_display,tag=pnp.port,distance=..48] if score @s pnp.portid = #phv pnp.tmp run function pnp:wrench/port/cut_links
playsound minecraft:block.chain.break master @s ~ ~ ~ 0.8 1.2
title @s actionbar {text:"Link cut.",color:"gray"}
