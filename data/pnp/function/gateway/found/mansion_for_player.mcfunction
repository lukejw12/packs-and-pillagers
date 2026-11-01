$execute if data storage pnp:gw p$(p).has.mansion run return 0
$execute if data storage pnp:gw p$(p).won.mansion run return 0
$data modify storage pnp:gw p$(p).has.mansion set value 1b
function pnp:world/deliver {card:"gate_mansion"}
title @s times 10 60 20
title @s subtitle {text:"to the Woodland Mansion is on your table",color:"gray"}
title @s title {text:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.4
tellraw @s {text:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
