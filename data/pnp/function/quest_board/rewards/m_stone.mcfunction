$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Stone", color: "white"},{text: "  Reward: 3 Emeralds", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Harvest", color: "white"},{text: " - Hand in 6 Wheat", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
