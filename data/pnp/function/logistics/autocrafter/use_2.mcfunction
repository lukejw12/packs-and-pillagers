$execute store result score #ach pnp.tmp run data get storage pnp:board acb.$(id)
$execute store result score #acn pnp.tmp run data get storage pnp:board acr.need.$(id)
scoreboard players operation #ach pnp.tmp -= #acn pnp.tmp
$execute store result storage pnp:board acb.$(id) int 1 run scoreboard players get #ach pnp.tmp
