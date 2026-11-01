$execute store result score #api pnp.tmp run data get storage pnp:cards defs.$(id).sell
scoreboard players set #api4 pnp.tmp 4
scoreboard players operation #api pnp.tmp /= #api4 pnp.tmp
$data modify storage pnp:api label set value {id:"$(id)"}
execute store result storage pnp:api label.n int 1 run scoreboard players get #api pnp.tmp
function pnp:api/card/set_sell_label with storage pnp:api label
