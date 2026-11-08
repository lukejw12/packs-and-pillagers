$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"gold_ingot"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"gold_ingot"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "],color:"gold"},{translate:"pnp.quest_board.side.s_prospector.name0",fallback:"Prospector I",color:"white"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
