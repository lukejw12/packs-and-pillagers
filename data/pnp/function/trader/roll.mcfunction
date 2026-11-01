execute store result score #roll pnp.tmp run random value 1..900
execute unless score #roll pnp.tmp matches 1 run return 0
function pnp:trader/arrive
