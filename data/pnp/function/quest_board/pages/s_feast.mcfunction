$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Feast I: Hand in 4 Bread ($(n)/4)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_2_emeralds",fallback:"Reward: 2 Emeralds"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Feast II: Hand in 8 Bread ($(n)/8)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_farm_pack",fallback:"Reward: Farm Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Feast III: Hand in 16 Bread ($(n)/16)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_golden_apple_and_farm_pack",fallback:"Reward: Golden Apple and Farm Pack"},"\n"], color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text:"✔ ",extra:[{translate:"pnp.quest_board.feast_all_three_done",fallback:"Feast: all three done"},"\n"], color: "#4a7a2a"}
