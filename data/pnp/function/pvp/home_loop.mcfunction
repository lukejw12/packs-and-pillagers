execute unless data storage pnp:pvp hm.list[0] run return 0
data modify storage pnp:pvp hm.i set from storage pnp:pvp hm.list[0].i
data modify storage pnp:pvp hm.hp set from storage pnp:pvp hm.list[0].hp
data remove storage pnp:pvp hm.list[0]
function pnp:pvp/home_one with storage pnp:pvp hm
function pnp:pvp/home_loop
