$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Summoning Orb", color: "white"},{text: "  Reward: Golden Apple", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Awakening", color: "white"},{text: " - Stack the Core and Orb together", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
