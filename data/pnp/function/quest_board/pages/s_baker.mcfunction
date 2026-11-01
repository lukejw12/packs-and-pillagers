$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Baker I: Hand in 1 Cake ($(n)/1)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "   Reward: 4 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Baker II: Hand in 3 Cake ($(n)/3)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "   Reward: Golden Apple and 2 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Baker III: Hand in 6 Cake ($(n)/6)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "   Reward: Adventure Pack and Golden Apple\n", color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text: "✔ Baker: all three done\n", color: "#4a7a2a"}
