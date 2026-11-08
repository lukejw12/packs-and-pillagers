execute as @e[type=item_display,tag=pnp.gw_used] run function pnp:card/remove
execute store result storage pnp:board gf.p int 1 run scoreboard players get @s pnp.tpid
function pnp:gateway/won/swamp_for_player with storage pnp:board gf
title @s times 10 70 20
title @s subtitle {translate:"pnp.gateway.swamp_won",fallback:"The Mega Slime is beaten",color:"gray"}
title @s title {translate:"pnp.gateway.victory",fallback:"Victory!",color:"gold"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
function pnp:chapter2/gw_event with storage pnp:board gf
