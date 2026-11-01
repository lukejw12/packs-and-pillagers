$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"humble_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Lumber", color: "white"},{text: "  Reward: Humble Pack", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Stone", color: "white"},{text: " - Hand in 8 Cobblestone", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
