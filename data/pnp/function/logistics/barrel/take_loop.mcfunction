execute if score #take pnp.tmp matches ..0 run return 0
execute unless score @s pnp.bcount matches 1.. run return 0
function pnp:logistics/pop_output with storage pnp:board rt
scoreboard players remove @s pnp.bcount 1
scoreboard players remove #take pnp.tmp 1
function pnp:logistics/barrel/take_loop
