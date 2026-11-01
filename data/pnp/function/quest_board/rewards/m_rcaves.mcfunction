$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "], color: "gold"},{translate:"pnp.card.redstone_caves.name",fallback:"Redstone Caves", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_5_emeralds",fallback:"Reward: 5 Emeralds"}], color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.quest_board.next",fallback:"Next:"}," "], color: "yellow"},{translate:"pnp.quest_board.a_charged_core",fallback:"A Charged Core", color: "white"},{text:" ",extra:[{translate:"pnp.quest_board.find_a_charged_redstone_core",fallback:"- Find a Charged Redstone Core"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
