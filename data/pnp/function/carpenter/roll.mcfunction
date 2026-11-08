execute unless score @s pnp.suppers matches 3.. run return 0
execute unless entity @e[type=wandering_trader,tag=pnp.carpenter,distance=..96] if function pnp:progression/carp_first run return run function pnp:carpenter/arrive
execute store result score #roll pnp.tmp run random value 1..1500
execute unless score #roll pnp.tmp matches 1 run return 0
execute if entity @e[type=wandering_trader,tag=pnp.carpenter,distance=..96] run return 0
function pnp:carpenter/arrive
