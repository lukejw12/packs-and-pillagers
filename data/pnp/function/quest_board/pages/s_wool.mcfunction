$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Shepherd I: Hand in 4 Wool ($(n)/4)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_2_emeralds",fallback:"Reward: 2 Emeralds"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Shepherd II: Hand in 8 Wool ($(n)/8)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_farm_pack",fallback:"Reward: Farm Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Shepherd III: Hand in 16 Wool ($(n)/16)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_adventure_pack",fallback:"Reward: Adventure Pack"},"\n"], color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text:"✔ ",extra:[{translate:"pnp.quest_board.shepherd_all_three_done",fallback:"Shepherd: all three done"},"\n"], color: "#4a7a2a"}
