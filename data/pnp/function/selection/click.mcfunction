execute if score @s pnp.sls matches 2 if score #click pnp.tmp matches 1 run return run function pnp:selection/place
execute if score @s pnp.sls matches 2 if score #click pnp.tmp matches 2 run return run function pnp:selection/cancel
execute if score #click pnp.tmp matches 2 if score @s pnp.sls matches 1 run return run function pnp:selection/corner_b
execute if score #click pnp.tmp matches 2 run return run function pnp:selection/corner_a
execute if score @s pnp.sls matches 1 run return run function pnp:selection/reset
return fail
