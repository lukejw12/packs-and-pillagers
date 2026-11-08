$execute unless data storage pnp:qb sun.$(c) run return 1
$data modify storage pnp:board seu set from storage pnp:qb sun.$(c)
$data modify storage pnp:board seu.p set value $(p)
return run function pnp:quest_board/elig_check with storage pnp:board seu
