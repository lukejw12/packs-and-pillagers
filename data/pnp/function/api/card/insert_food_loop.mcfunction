execute unless data storage pnp:api left[0] run return 0
execute store result score #api_lo pnp.tmp run data get storage pnp:api left[0].o
execute if score #api_placed pnp.tmp matches 0 if score #api_lo pnp.tmp > #api_fo pnp.tmp run function pnp:api/card/place_food
data modify storage pnp:api sorted append from storage pnp:api left[0]
data remove storage pnp:api left[0]
function pnp:api/card/insert_food_loop
