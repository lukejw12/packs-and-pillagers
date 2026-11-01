$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Family I: Raise 1 babies ($(n)/1)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_humble_pack",fallback:"Reward: Humble Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Family II: Raise 3 babies ($(n)/3)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_farm_pack",fallback:"Reward: Farm Pack"},"\n"], color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Family III: Raise 6 babies ($(n)/6)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_golden_apple_and_farm_pack",fallback:"Reward: Golden Apple and Farm Pack"},"\n"], color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text:"✔ ",extra:[{translate:"pnp.quest_board.family_all_three_done",fallback:"Family: all three done"},"\n"], color: "#4a7a2a"}
