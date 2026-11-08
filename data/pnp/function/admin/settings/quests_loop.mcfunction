execute unless data storage pnp:board adm.cl[0] run return 0
data modify storage pnp:board adm.c set from storage pnp:board adm.cl[0]
function pnp:admin/settings/quests_one with storage pnp:board adm
data remove storage pnp:board adm.cl[0]
function pnp:admin/settings/quests_loop
