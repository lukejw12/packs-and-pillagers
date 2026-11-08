$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.$(c).t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.$(c).n
$function pnp:quest_board/pages/$(c) with storage pnp:board qbr
data modify storage pnp:board qbs append value "\n"
