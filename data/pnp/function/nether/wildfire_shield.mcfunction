execute if entity @e[type=item_display,tag=pnp.atkr,tag=pnp.ranged] run return run function pnp:nether/wildfire_crack
execute store result score #wr pnp.tmp run random value 1..4
execute if score #wr pnp.tmp matches 1 run return run function pnp:nether/wildfire_crack
function pnp:fight/miss
