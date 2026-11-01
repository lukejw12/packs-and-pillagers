execute store result storage pnp:board qt.a int 1 run scoreboard players get @s pnp.qprog
execute store result storage pnp:board qt.b int 1 run scoreboard players get @s pnp.qneed
data modify storage pnp:board qt.r set from entity @s item.components."minecraft:custom_data".rwd
function pnp:quest/tip_with_progress with storage pnp:board qt
