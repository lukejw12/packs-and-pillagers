execute unless score #need pnp.tmp matches 1.. run return 0
execute unless data storage pnp:board supper_foods[0] run return 0
data modify storage pnp:board supper_food set value {v:0,m:0}
data modify storage pnp:board supper_food.id set from storage pnp:board supper_foods[0].id
function pnp:supper/load_food_values with storage pnp:board supper_food
execute store result score #fv pnp.tmp run data get storage pnp:board supper_food.v
execute if score #fv pnp.tmp matches 1.. run function pnp:supper/eat_food with storage pnp:board supper_food
data remove storage pnp:board supper_foods[0]
function pnp:supper/eat_loop
