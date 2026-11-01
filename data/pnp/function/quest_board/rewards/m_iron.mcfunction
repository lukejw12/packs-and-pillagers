$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"combat_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"idea_vault"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Quest complete: ", color: "gold"},{text: "Iron Age", color: "white"},{text: "  Reward: Combat Pack and the Vault idea", color: "gray"}]
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "Next: ", color: "yellow"},{text: "Into the Depths", color: "white"},{text: " - Explore a Cave 3 times", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
