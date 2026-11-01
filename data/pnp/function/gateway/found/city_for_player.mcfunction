$execute if data storage pnp:gw p$(p).has.city run return 0
$execute if data storage pnp:gw p$(p).won.city run return 0
$data modify storage pnp:gw p$(p).has.city set value 1b
function pnp:world/deliver {card:"gate_city"}
title @s times 10 60 20
title @s subtitle {text:"to the Deep Dark is on your table",color:"gray"}
title @s title {text:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.4
tellraw @s {text:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
