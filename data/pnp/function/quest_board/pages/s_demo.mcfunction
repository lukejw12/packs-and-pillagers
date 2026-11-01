$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Demolition I: Blow up 3 monsters with TNT ($(n)/3)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "   Reward: 2 TNT\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Demolition II: Blow up 10 monsters with TNT ($(n)/10)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "   Reward: 5 Emeralds\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Demolition III: Blow up 25 monsters with TNT ($(n)/25)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "   Reward: Combat Pack and 2 TNT\n", color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text: "✔ Demolition: all three done\n", color: "#4a7a2a"}
