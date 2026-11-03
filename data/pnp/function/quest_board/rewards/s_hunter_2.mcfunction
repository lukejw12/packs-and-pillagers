$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"iron_sword"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"combat_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.side_quest_complete",fallback:"Side quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.hunter_iii",fallback:"Hunter III", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_iron_sword_and_combat_pack",fallback:"Reward: an Iron Sword and a Combat Pack"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
