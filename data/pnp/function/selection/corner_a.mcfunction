function pnp:selection/cursor_block
execute unless entity @e[type=marker,tag=pnp.mycur] run return 1
scoreboard players operation @s pnp.sax = #bx pnp.tmp
scoreboard players operation @s pnp.saz = #bz pnp.tmp
scoreboard players set @s pnp.sls 1
function pnp:selection/box/spawn
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.4
title @s actionbar {text:"Right-click the opposite corner.",color:"aqua"}
return 1
