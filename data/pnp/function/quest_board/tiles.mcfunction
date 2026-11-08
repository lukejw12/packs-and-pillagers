$execute if data storage pnp:board qtk{x$(x):"$(k)"} in pnp:board positioned $(x).5 65 16.25 if entity @e[type=item_display,tag=pnp.qb_tile,distance=..6] run return 0
$execute in pnp:board positioned $(x).5 65 16.25 run kill @e[tag=pnp.qb_tile,distance=..6]
$data modify storage pnp:board qtl set from storage pnp:qb rew.$(k)
data modify storage pnp:board qtp set value {i:0}
$data modify storage pnp:board qtp.x set value $(x)
function pnp:quest_board/tile_loop
$data modify storage pnp:board qtk.x$(x) set value "$(k)"
