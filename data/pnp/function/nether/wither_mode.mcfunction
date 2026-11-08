scoreboard players set @s pnp.spell 0
execute store result score #wm pnp.tmp run random value 1..2
execute if score #wm pnp.tmp matches 1 run return run function pnp:nether/wither_land
function pnp:nether/wither_fly
