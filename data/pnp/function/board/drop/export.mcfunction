scoreboard players set #route pnp.tmp 1
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/export_one
execute as @e[type=item_display,tag=pnp.held,distance=..64] if score @s pnp.stack = #hsid pnp.tmp run function pnp:board/drop/release
scoreboard players operation #csid pnp.tmp = #hsid pnp.tmp
execute as @e[type=item_display,tag=pnp.dt,limit=1] at @s positioned ~1.1 65.01 ~ run function pnp:board/stack/compact
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.8 1
title @s actionbar {text:"Sent to your inventory",color:"green"}
