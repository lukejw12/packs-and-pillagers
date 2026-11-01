function pnp:board/plot/get_coords
data modify storage pnp:board sc.list set from storage pnp:cards order
data modify storage pnp:board sc.x set from storage pnp:board tmp.x
scoreboard players set #i pnp.tmp 0
function pnp:debug/showcase_loop
