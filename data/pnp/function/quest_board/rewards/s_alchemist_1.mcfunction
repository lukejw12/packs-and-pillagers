$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"bone"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"bone"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"cod"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"cod"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"sweet_berries"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"sweet_berries"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"sweet_berries"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"sweet_berries"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "],color:"gold"},{translate:"pnp.quest_board.side.s_alchemist.name1",fallback:"Alchemist II",color:"white"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
