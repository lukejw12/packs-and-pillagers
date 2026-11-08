data modify storage pnp:board stl set from storage pnp:cards study_order
$data modify storage pnp:board stc set value {p:$(p)}
$execute store result score #stm pnp.tmp run data get storage pnp:qb p$(p).m
function pnp:progression/study_loop
execute if data storage pnp:board stc.c run return run function pnp:progression/study_give with storage pnp:board stc
return 0
