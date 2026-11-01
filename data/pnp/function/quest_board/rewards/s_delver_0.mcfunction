$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"treasure_map"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"emerald"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Side quest complete: ", color: "gold"},{text: "Delver I", color: "white"},{text: "  Reward: Treasure Map and 2 Emeralds", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
