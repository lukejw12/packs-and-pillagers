execute unless data storage pnp:board dq[0] run return 0
data modify storage pnp:board dqc set from storage pnp:board dq[0]
execute if data storage pnp:board dqc{t:"vil"} run function pnp:villager/release/spawn with storage pnp:board dqc
execute if data storage pnp:board dqc{t:"item"} run function pnp:delivery/item
data remove storage pnp:board dq[0]
function pnp:delivery/loop
