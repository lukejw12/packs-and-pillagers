$execute if data storage pnp:gw p$(p).has.trial run return 0
$execute if data storage pnp:gw p$(p).won.trial run return 0
$data modify storage pnp:gw p$(p).has.trial set value 1b
function pnp:world/deliver {card:"gate_trial"}
title @s times 10 60 20
title @s subtitle {text:"to the Trial Chambers is on your table",color:"gray"}
title @s title {text:"Unstable Gateway",color:"light_purple"}
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.4 1.4
tellraw @s {text:"Stack villagers on it and right-click to send them through. It fades in 3 days.",color:"light_purple"}
