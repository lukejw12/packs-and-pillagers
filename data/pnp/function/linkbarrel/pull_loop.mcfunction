execute unless data storage pnp:board lbl[0] run return 0
data modify storage pnp:board lbs set from storage pnp:board lbl[0]
execute if function pnp:linkbarrel/pull_one run return 1
data remove storage pnp:board lbl[0]
function pnp:linkbarrel/pull_loop
