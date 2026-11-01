scoreboard players set #min pnp.tmp 1
scoreboard players set #mout pnp.tmp 1
$execute if data storage pnp:cards machines.$(id).in store result score #min pnp.tmp run data get storage pnp:cards machines.$(id).in
$execute if data storage pnp:cards machines.$(id).out store result score #mout pnp.tmp run data get storage pnp:cards machines.$(id).out
execute if score #min pnp.tmp matches 5.. run scoreboard players set #min pnp.tmp 4
execute if score #mout pnp.tmp matches 5.. run scoreboard players set #mout pnp.tmp 4
