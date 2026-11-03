$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"iron_sword"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.slayer_ii",fallback:"Slayer II", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_iron_sword",fallback:"Reward: an Iron Sword"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
