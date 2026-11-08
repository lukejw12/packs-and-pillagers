$execute in pnp:board positioned $(cx) 65.01 4 positioned ~-7 ~ ~ run function pnp:card/spawn {card:"ghast"}
$execute in pnp:board positioned $(cx) 65.01 3 run function pnp:card/spawn {card:"ghast"}
$execute in pnp:board positioned $(cx) 65.01 4 positioned ~7 ~ ~ run function pnp:card/spawn {card:"ghast"}
$tellraw @a[scores={pnp.tpid=$(p)}] {translate:"pnp.nether.storm",fallback:"A Ghast Storm rolls over your Nether table!",color:"red"}
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:entity.ghast.warn master @s ~ ~ ~ 0.8 0.9
