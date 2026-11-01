scoreboard players set @s pnp.tut 99
function pnp:tutorial/unglow
$bossbar remove pnp:tut$(p)
title @s times 10 60 20
title @s subtitle {text:"Now buy packs at the shops",color:"gray"}
title @s title {text:"Intro complete!",color:"gold"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1
