$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"nether_wart"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"nether_wart"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"nether_wart"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"nether_wart"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "],color:"gold"},{translate:"pnp.quest_board.side.s_forager.name0",fallback:"Forager I",color:"white"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
