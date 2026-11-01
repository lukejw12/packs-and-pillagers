execute at @s run function pnp:villager/drop_all
data modify storage pnp:board rl set value {prof:"minecraft:none",lvl:1}
data modify storage pnp:board rl.prof set from entity @s item.components."minecraft:custom_data".prof
execute store result storage pnp:board rl.lvl int 1 run scoreboard players get @s pnp.vlvl
execute store result storage pnp:board rl.p int 1 run scoreboard players get @a[tag=pnp.dropper,limit=1] pnp.pid
function pnp:villager/release/queue with storage pnp:board rl
function pnp:card/remove
title @a[tag=pnp.dropper] actionbar {text:"Released. They'll be waiting for you when you leave the table.",color:"green"}
