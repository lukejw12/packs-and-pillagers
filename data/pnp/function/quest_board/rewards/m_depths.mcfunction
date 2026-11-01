$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"redstone_caves"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Into the Depths", color: "white"},{text: "  Reward: the Redstone Caves", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Redstone Caves", color: "white"},{text: " - Clear the Redstone Caves", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
