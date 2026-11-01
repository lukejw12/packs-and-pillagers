$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"adventure_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"idea_shelf"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "New Homes", color: "white"},{text: "  Reward: Adventure Pack and the Shelf idea", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Survivor", color: "white"},{text: " - Survive 2 nights", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
