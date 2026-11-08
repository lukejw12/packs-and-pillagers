execute unless data storage pnp:board stl[0] run return 0
data modify storage pnp:board stc.t set from storage pnp:board stl[0].i
execute if data storage pnp:board stl[0].ch if score #stm pnp.tmp matches ..18 run return run function pnp:progression/study_next
execute store result score #stk pnp.tmp run function pnp:progression/study_known with storage pnp:board stc
execute if score #stk pnp.tmp matches 0 run return run data modify storage pnp:board stc.c set from storage pnp:board stc.t
function pnp:progression/study_next
