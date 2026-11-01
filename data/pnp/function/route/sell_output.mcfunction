execute if score #earn pnp.tmp matches ..0 run return 0
scoreboard players remove #earn pnp.tmp 1
data modify storage pnp:board rt.c set value "emerald"
scoreboard players set #sent pnp.tmp 0
execute if entity @s[tag=pnp.hasout] run function pnp:route/send
execute if score #sent pnp.tmp matches 0 run function pnp:logistics/pop_output with storage pnp:board rt
function pnp:route/sell_output
