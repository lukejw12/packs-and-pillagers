function pnp:selection/cursor_block
execute unless entity @e[type=marker,tag=pnp.mycur] run return 1
function pnp:selection/rectangle
scoreboard players operation #gx1 pnp.tmp = #X1 pnp.tmp
scoreboard players remove #gx1 pnp.tmp 45
scoreboard players operation #gx2 pnp.tmp = #X2 pnp.tmp
scoreboard players add #gx2 pnp.tmp 45
scoreboard players operation #gz1 pnp.tmp = #Z1 pnp.tmp
scoreboard players remove #gz1 pnp.tmp 45
scoreboard players operation #gz2 pnp.tmp = #Z2 pnp.tmp
scoreboard players add #gz2 pnp.tmp 45
tag @e[type=item_display,tag=pnp.selc] remove pnp.selc
function pnp:selection/store_area
execute in pnp:board as @e[type=item_display,tag=pnp.selc] run function pnp:selection/in_box
execute unless entity @e[type=item_display,tag=pnp.selc] run function pnp:selection/box/remove
execute unless entity @e[type=item_display,tag=pnp.selc] run scoreboard players set @s pnp.sls 0
execute unless entity @e[type=item_display,tag=pnp.selc] run return run title @s actionbar {text:"There's nothing in that box to move.",color:"gray"}
scoreboard players operation @s pnp.srx1 = #X1 pnp.tmp
scoreboard players operation @s pnp.srx2 = #X2 pnp.tmp
scoreboard players operation @s pnp.srz1 = #Z1 pnp.tmp
scoreboard players operation @s pnp.srz2 = #Z2 pnp.tmp
scoreboard players operation #cx pnp.tmp = #X1 pnp.tmp
scoreboard players operation #cx pnp.tmp += #X2 pnp.tmp
scoreboard players operation #cx pnp.tmp *= #5 pnp.tmp
scoreboard players operation #cz pnp.tmp = #Z1 pnp.tmp
scoreboard players operation #cz pnp.tmp += #Z2 pnp.tmp
scoreboard players operation #cz pnp.tmp *= #5 pnp.tmp
scoreboard players operation @s pnp.scx = #cx pnp.tmp
scoreboard players operation @s pnp.scz = #cz pnp.tmp
execute in pnp:board as @e[type=item_display,tag=pnp.selc] run function pnp:selection/take_stack
tag @e[type=item_display,tag=pnp.selc] remove pnp.selc
scoreboard players set @s pnp.sls 2
playsound minecraft:item.bundle.insert master @s ~ ~ ~ 0.7 1
title @s actionbar {text:"Click to put them down. Right-click to put them back.",color:"aqua"}
return 1
