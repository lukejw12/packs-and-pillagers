$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"combat_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.demolition_iii",fallback:"Demolition III", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_combat_pack_and_2_tnt",fallback:"Reward: Combat Pack and 2 TNT"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
