$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"combat_pack"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"tnt"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text: "✔ Side quest complete: ", color: "gold"},{text: "Demolition III", color: "white"},{text: "  Reward: Combat Pack and 2 TNT", color: "gray"}]
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
