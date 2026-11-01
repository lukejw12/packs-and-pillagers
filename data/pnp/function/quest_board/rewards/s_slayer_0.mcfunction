$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"combat_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Side quest complete: ", color: "gold"},{text: "Slayer I", color: "white"},{text: "  Reward: Combat Pack", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
