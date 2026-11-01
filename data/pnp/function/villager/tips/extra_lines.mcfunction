execute unless data storage pnp:board tipj.spl[0] run return 0
data modify storage pnp:board tt append from storage pnp:board tipj.spl[0]
data remove storage pnp:board tipj.spl[0]
function pnp:villager/tips/extra_lines
