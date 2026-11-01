$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Awakening", color: "white"},{text: "  Reward: 2 Golden Apples", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "The Redstone Monstrosity", color: "white"},{text: " - Defeat the Redstone Monstrosity", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
