$execute in pnp:board positioned $(cx) 65.01 3 positioned ~-9 ~ ~ run function pnp:card/spawn {card:"hoglin"}
$execute in pnp:board positioned $(cx) 65.01 3 positioned ~-3 ~ ~ run function pnp:card/spawn {card:"hoglin"}
$execute in pnp:board positioned $(cx) 65.01 3 positioned ~3 ~ ~ run function pnp:card/spawn {card:"hoglin"}
$execute in pnp:board positioned $(cx) 65.01 3 positioned ~9 ~ ~ run function pnp:card/spawn {card:"hoglin"}
$tellraw @a[scores={pnp.tpid=$(p)}] {translate:"pnp.nether.stampede",fallback:"A Hoglin Stampede is charging across your Nether table!",color:"red"}
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:entity.hoglin.angry master @s ~ ~ ~ 1 0.8
