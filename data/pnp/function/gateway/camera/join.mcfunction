scoreboard players operation #me pnp.tmp = @s pnp.pid
execute if score @s pnp.holding matches 1.. run function pnp:gateway/drop_held
execute if score @s pnp.tool matches 1 run function pnp:wrench/off
$execute on vehicle in pnp:board run tp @s $(axc).5 ~ 23.5
rotate @s 180 42
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.25 1.6
title @s times 10 50 15
title @s subtitle {text:"Survive the waves, then beat the boss",color:"gray"}
$title @s title {text:"$(name)",color:"light_purple"}
