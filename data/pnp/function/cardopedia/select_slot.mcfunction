$data remove storage pnp:pedia2 v.p$(me).s$(i)
data remove storage pnp:pedia2 ps.id
function pnp:cardopedia/slot_id with storage pnp:pedia2 ps
execute unless data storage pnp:pedia2 ps.id run return 0
function pnp:cardopedia/slot_go with storage pnp:pedia2 ps
