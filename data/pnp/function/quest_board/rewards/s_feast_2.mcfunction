$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"golden_apple"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"farm_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Side quest complete: ", color: "gold"},{text: "Feast III", color: "white"},{text: "  Reward: Golden Apple and Farm Pack", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
