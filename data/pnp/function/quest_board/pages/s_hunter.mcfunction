$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Hunter I: Defeat 5 monsters ($(n)/5)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_3_emeralds",fallback:"Reward: 3 Emeralds"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Hunter II: Defeat 15 monsters ($(n)/15)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_combat_pack",fallback:"Reward: Combat Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Hunter III: Defeat 40 monsters ($(n)/40)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_iron_sword_and_combat_pack",fallback:"Reward: Iron Sword and Combat Pack"},"\n"], color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text:"✔ ",extra:[{translate:"pnp.quest_board.hunter_all_three_done",fallback:"Hunter: all three done"},"\n"], color: "#4a7a2a"}
