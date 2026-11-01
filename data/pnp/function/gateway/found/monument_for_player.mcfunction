$execute if data storage pnp:gw p$(p).has.monument run return 0
$execute if data storage pnp:gw p$(p).won.monument run return 0
$data modify storage pnp:gw p$(p).has.monument set value 1b
function pnp:world/deliver {card:"gate_monument"}
title @s times 10 60 20
title @s subtitle {translate:"pnp.gateway.to_the_ocean_monument_is_on",fallback:"to the Ocean Monument is on your table",color:"gray"}
title @s title {translate:"pnp.gateway.unstable_gateway",fallback:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.4
tellraw @s {translate:"pnp.gateway.stack_villagers_on_it_and_right",fallback:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
