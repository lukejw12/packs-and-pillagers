$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.stone",fallback:"Stone", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_3_emeralds",fallback:"Reward: 3 Emeralds"}], color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.quest_board.next",fallback:"Next:"}," "], color: "yellow"},{translate:"pnp.quest_board.harvest",fallback:"Harvest", color: "white"},{text:" ",extra:[{translate:"pnp.quest_board.hand_in_6_wheat",fallback:"- Hand in 6 Wheat"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
