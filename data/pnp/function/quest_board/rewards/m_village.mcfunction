$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"humble_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Growing Village", color: "white"},{text: "  Reward: Humble Pack and 2 Emeralds", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "New Homes", color: "white"},{text: " - Build 2 Houses", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
