$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"treasure_map"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.delver_i",fallback:"Delver I", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_treasure_map_and_2_emeralds",fallback:"Reward: a Treasure Map and 2 Emeralds"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
