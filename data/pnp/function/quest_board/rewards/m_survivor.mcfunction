$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "], color: "gold"},{translate:"pnp.card.q_survivor.name",fallback:"Survivor", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_golden_apple_and_2_emeralds",fallback:"Reward: Golden Apple and 2 Emeralds"}], color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.quest_board.next",fallback:"Next:"}," "], color: "yellow"},{translate:"pnp.quest_board.iron_age",fallback:"Iron Age", color: "white"},{text:" ",extra:[{translate:"pnp.quest_board.hand_in_6_iron_ingots",fallback:"- Hand in 6 Iron Ingots"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
