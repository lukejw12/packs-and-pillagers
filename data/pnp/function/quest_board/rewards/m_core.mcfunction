$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "], color: "gold"},{translate:"pnp.quest_board.a_charged_core",fallback:"A Charged Core", color: "white"},{text:"  ",extra:[{translate:"pnp.quest_board.reward_2_tnt",fallback:"Reward: 2 TNT"}], color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.quest_board.next",fallback:"Next:"}," "], color: "yellow"},{translate:"pnp.card.summoning_orb.name",fallback:"Summoning Orb", color: "white"},{text:" ",extra:[{translate:"pnp.quest_board.find_a_summoning_orb_evokers",fallback:"- Find a Summoning Orb from an Evoker"}], color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
