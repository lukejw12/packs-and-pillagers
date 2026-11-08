$execute store result score #qoc pnp.tmp run data get storage pnp:qb p$(p).offer
execute if score #qoc pnp.tmp matches 3.. run return 0
data modify storage pnp:board qel set value []
data modify storage pnp:board qcl set from storage pnp:qb chains
$data modify storage pnp:board qec set value {p:$(p)}
function pnp:quest_board/elig_loop
execute store result score #qen pnp.tmp run data get storage pnp:board qel
execute if score #qen pnp.tmp matches 0 run return 0
scoreboard players remove #qen pnp.tmp 1
execute store result storage pnp:board qpk.m int 1 run scoreboard players get #qen pnp.tmp
$data modify storage pnp:board qpk.p set value $(p)
function pnp:quest_board/pick_offer with storage pnp:board qpk
$function pnp:quest_board/fill_offers {p:$(p)}
