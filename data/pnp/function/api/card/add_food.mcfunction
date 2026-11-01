$execute if data storage pnp:cards foods[{id:"$(id)"}] run return 0
$execute store result score #api_fo pnp.tmp run data get storage pnp:cards defs.$(id).food
$execute if data storage pnp:cards defs.$(id).eat_order store result score #api_fo pnp.tmp run data get storage pnp:cards defs.$(id).eat_order
$data modify storage pnp:api food set value {id:"$(id)"}
execute store result storage pnp:api food.o int 1 run scoreboard players get #api_fo pnp.tmp
data modify storage pnp:api left set from storage pnp:cards foods
data modify storage pnp:api sorted set value []
scoreboard players set #api_placed pnp.tmp 0
function pnp:api/card/insert_food_loop
execute if score #api_placed pnp.tmp matches 0 run data modify storage pnp:api sorted append from storage pnp:api food
data modify storage pnp:cards foods set from storage pnp:api sorted
