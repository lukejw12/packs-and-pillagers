$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"farm_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.feast_iii",fallback:"Feast III", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_golden_apple_and_farm_pack",fallback:"Reward: a Golden Apple and a Farm Pack"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
