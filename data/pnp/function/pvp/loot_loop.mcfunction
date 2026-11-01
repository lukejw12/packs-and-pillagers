execute unless data storage pnp:pvp hm.loot[0] run return 0
data modify storage pnp:pvp hl.c set from storage pnp:pvp hm.loot[0]
data modify storage pnp:pvp hl.x set from storage pnp:pvp hm.h
data remove storage pnp:pvp hm.loot[0]
function pnp:pvp/loot_one with storage pnp:pvp hl
function pnp:pvp/loot_loop
