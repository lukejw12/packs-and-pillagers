$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Delver I: Clear 1 gateways or caves ($(n)/1)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "   Reward: Treasure Map and 2 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Delver II: Clear 3 gateways or caves ($(n)/3)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "   Reward: Adventure Pack and 2 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Delver III: Clear 6 gateways or caves ($(n)/6)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "   Reward: Diamond and Adventure Pack\n", color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text: "✔ Delver: all three done\n", color: "#4a7a2a"}
