$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"farm_pack"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Harvest", color: "white"},{text: "  Reward: Farm Pack", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Growing Village", color: "white"},{text: " - Have 4 villagers", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
