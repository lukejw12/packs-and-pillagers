$execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "Slayer I: Defeat 10 mobs in the world ($(n)/10)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:0} run data modify storage pnp:board qbs append value {text: "   Reward: Combat Pack\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "Slayer II: Defeat 25 mobs in the world ($(n)/25)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:1} run data modify storage pnp:board qbs append value {text: "   Reward: Iron Sword\n", color: "#7a5a30"}
$execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "Slayer III: Defeat 60 mobs in the world ($(n)/60)\n", color: "#2b1a0c"}
execute if data storage pnp:board qbr{t:2} run data modify storage pnp:board qbs append value {text: "   Reward: Combat Pack and Golden Apple\n", color: "#7a5a30"}
execute if data storage pnp:board qbr{t:3} run data modify storage pnp:board qbs append value {text: "✔ Slayer: all three done\n", color: "#4a7a2a"}
