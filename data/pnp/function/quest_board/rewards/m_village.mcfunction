$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"humble_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "], color: "gold"},{translate:"pnp.card.q_village.name",fallback:"Growing Village", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_humble_pack_and_2_emeralds",fallback:"Reward: Humble Pack and 2 Emeralds"}], color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.quest_board.next",fallback:"Next:"}," "], color: "yellow"},{translate:"pnp.card.q_housing.name",fallback:"New Homes", color: "white"},{text:" ",extra:[{translate:"pnp.quest_board.build_2_houses",fallback:"- Build 2 Houses"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
