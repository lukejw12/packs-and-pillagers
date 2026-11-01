execute unless data storage pnp:board die.loot[0] run return 0
data modify storage pnp:board die.l set from storage pnp:board die.loot[0]
function pnp:fight/loot_one with storage pnp:board die
data remove storage pnp:board die.loot[0]
function pnp:fight/loot_loop
