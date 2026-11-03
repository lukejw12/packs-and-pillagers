$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"diamond"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"adventure_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.delver_iii",fallback:"Delver III", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_diamond_and_adventure_pack",fallback:"Reward: a Diamond and an Adventure Pack"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
