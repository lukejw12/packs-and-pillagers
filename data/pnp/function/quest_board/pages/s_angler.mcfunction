$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Angler I: Catch 4 fish in the world ($(n)/4)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_farm_pack",fallback:"Reward: Farm Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Angler II: Catch 10 fish in the world ($(n)/10)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_4_emeralds",fallback:"Reward: 4 Emeralds"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Angler III: Catch 25 fish in the world ($(n)/25)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_adventure_pack",fallback:"Reward: Adventure Pack"},"\n"], color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text:"✔ ",extra:[{translate:"pnp.quest_board.angler_all_three_done",fallback:"Angler: all three done"},"\n"], color: "#4a7a2a"}
