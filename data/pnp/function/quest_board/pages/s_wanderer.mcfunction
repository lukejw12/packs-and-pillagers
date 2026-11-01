$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Wanderer I: Find 1 villages in the world ($(n)/1)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "   Reward: 3 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Wanderer II: Find 2 villages in the world ($(n)/2)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "   Reward: Adventure Pack\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Wanderer III: Find 4 villages in the world ($(n)/4)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "   Reward: Caving Pack\n", color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text: "✔ Wanderer: all three done\n", color: "#4a7a2a"}
