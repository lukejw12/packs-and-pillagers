$function pnp:quest_board/init {p:$(p)}
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$data modify storage pnp:board qba set value {p:$(p),n:1}
data modify storage pnp:board qdl set value "wheat"
execute if function pnp:quest_board/dl_is run return run function pnp:quest_board/take_main
