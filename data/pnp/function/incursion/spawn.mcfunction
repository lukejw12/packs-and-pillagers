execute store result score #ink pnp.tmp run random value 1..2
$execute if score #ink pnp.tmp matches 1 in pnp:board positioned $(x) 65.01 2 positioned ~12 ~ ~ run function pnp:incursion/one {c:"zombified_piglin"}
$execute if score #ink pnp.tmp matches 1 in pnp:board positioned $(x) 65.01 2 positioned ~16 ~ ~ run function pnp:incursion/one {c:"zombified_piglin"}
$execute if score #ink pnp.tmp matches 1 in pnp:board positioned $(x) 65.01 2 positioned ~20 ~ ~ run function pnp:incursion/one {c:"zombified_piglin"}
$execute if score #ink pnp.tmp matches 2 in pnp:board positioned $(x) 65.01 2 positioned ~14 ~ ~ run function pnp:incursion/one {c:"ghast"}
$execute if score #ink pnp.tmp matches 2 in pnp:board positioned $(x) 65.01 2 positioned ~18 ~ ~ run function pnp:incursion/one {c:"zombified_piglin"}
