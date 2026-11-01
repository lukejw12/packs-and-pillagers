scoreboard players set @s pnp.tut 99
function pnp:tutorial/unglow
$bossbar remove pnp:tut$(p)
title @s times 10 60 20
title @s subtitle {translate:"pnp.tutorial.now_buy_packs_at_the_shops",fallback:"Now buy packs at the shops",color:"gray"}
title @s title {translate:"pnp.tutorial.intro_complete",fallback:"Intro complete!",color:"gold"}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1
