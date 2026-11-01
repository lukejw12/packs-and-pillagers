$scoreboard players set #mode pnp.ids $(m)
tag @a remove pnp.mhost
tag @s add pnp.mhost
tag @a remove pnp.mwait
execute unless score #mode pnp.ids matches 2 run scoreboard players set #coop pnp.ids 0
title @a times 10 70 20
$title @a subtitle {text:"$(d)",color:"gray"}
$title @a title {text:"$(t)",color:"gold"}
$tellraw @a [{text:"",extra:[{translate:"pnp.menu.mode",fallback:"Mode:"}," "],color:"gold"},{text:"$(t)",color:"white"},{text:". $(d)",color:"gray"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1.2
dialog clear @s
