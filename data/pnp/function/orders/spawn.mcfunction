data modify storage pnp:board ocl set value []
$execute if data storage pnp:found p$(p).oak_log run data modify storage pnp:board ocl append value "q_lumber"
$execute if data storage pnp:found p$(p).cobblestone run data modify storage pnp:board ocl append value "q_stone"
$execute if data storage pnp:found p$(p).iron_ingot run data modify storage pnp:board ocl append value "q_iron"
$execute if data storage pnp:found p$(p).wheat run data modify storage pnp:board ocl append value "q_harvest"
$execute if data storage pnp:found p$(p).bread run data modify storage pnp:board ocl append value "q_feast"
$execute if data storage pnp:found p$(p).wool run data modify storage pnp:board ocl append value "q_wool"
execute store result score #ocn pnp.tmp run data get storage pnp:board ocl
execute if score #ocn pnp.tmp matches 0 run return 0
scoreboard players remove #ocn pnp.tmp 1
execute store result storage pnp:board ocp.m int 1 run scoreboard players get #ocn pnp.tmp
function pnp:orders/pick with storage pnp:board ocp
