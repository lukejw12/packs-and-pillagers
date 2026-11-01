scoreboard players operation #dmove pnp.tmp /= #c2 pnp.tmp
scoreboard players operation #dfly pnp.tmp /= #c2 pnp.tmp
scoreboard players operation #ddwell pnp.tmp /= #c2 pnp.tmp
scoreboard players remove #j pnp.tmp 1
execute if score #j pnp.tmp matches 1.. if score #dmove pnp.tmp matches 2.. run function pnp:supper/animation/halve_time
