$execute if data storage pnp:gw p$(p).has.$(g) run return 0
$execute if data storage pnp:gw p$(p).won.$(g) run return 0
$data modify storage pnp:gw p$(p).has.$(g) set value 1b
$function pnp:nether/build {p:$(p)}
$function pnp:nether/coords {p:$(p)}
data modify storage pnp:board nd set from storage pnp:board nt
$data modify storage pnp:board nd.b set value "gate_$(g)"
function pnp:nether/deliver_at with storage pnp:board nd
title @s times 10 60 20
title @s subtitle {translate:"pnp.nether.on_nether_table",fallback:"is on your Nether table",color:"gray"}
title @s title {translate:"pnp.gateway.unstable_gateway",fallback:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.2
tellraw @s {translate:"pnp.gateway.stack_villagers_on_it_and_right",fallback:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
