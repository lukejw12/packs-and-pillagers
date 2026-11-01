$function pnp:quest_board/init {p:$(p)}
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$data modify storage pnp:board qba set value {p:$(p),n:1}
$execute unless data storage pnp:qb p$(p).s.s_feast{t:3} run return run function pnp:quest_board/take_side {q:"s_feast"}
