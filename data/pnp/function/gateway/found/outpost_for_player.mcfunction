$execute if data storage pnp:gw p$(p).has.outpost run return 0
$execute if data storage pnp:gw p$(p).won.outpost run return 0
$data modify storage pnp:gw p$(p).has.outpost set value 1b
function pnp:world/deliver {card:"gate_outpost"}
title @s times 10 60 20
title @s subtitle {translate:"pnp.gateway.to_a_pillager_outpost_is_on",fallback:"to a Pillager Outpost is on your table",color:"gray"}
title @s title {translate:"pnp.gateway.unstable_gateway",fallback:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.4
tellraw @s {translate:"pnp.gateway.stack_villagers_on_it_and_right",fallback:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
