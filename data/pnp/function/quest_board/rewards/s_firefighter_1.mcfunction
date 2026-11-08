$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"potion_fire_res"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"potion_fire_res"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "],color:"gold"},{translate:"pnp.quest_board.side.s_firefighter.name1",fallback:"Firefighter II",color:"white"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
