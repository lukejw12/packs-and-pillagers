title @s times 10 60 20
title @s subtitle {translate:"pnp.gateway.golems_sometimes_drop_a_charged_core",fallback:"Golems sometimes drop a Charged Core.",color:"gray"}
title @s title {translate:"pnp.gateway.caves_cleared",fallback:"Caves Cleared!",color:"red"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1.2
execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
data modify storage pnp:board qk.qk set value "delve"
function pnp:quest/on_event with storage pnp:board qk
execute store result storage pnp:board qk.o int 1 run scoreboard players get @s pnp.tpid
data modify storage pnp:board qk.qk set value "rcaves"
function pnp:quest/on_event with storage pnp:board qk
