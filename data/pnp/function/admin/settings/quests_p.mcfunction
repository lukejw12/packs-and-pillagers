$data modify storage pnp:qb p$(p).m set value 32
$data modify storage pnp:nether unlocked.p$(p) set value 1b
data modify storage pnp:board adm.cl set from storage pnp:qb chains
function pnp:admin/settings/quests_loop
