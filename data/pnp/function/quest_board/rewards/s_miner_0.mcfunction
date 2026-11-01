$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"adventure_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Side quest complete: ", color: "gold"},{text: "Miner I", color: "white"},{text: "  Reward: Adventure Pack", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
