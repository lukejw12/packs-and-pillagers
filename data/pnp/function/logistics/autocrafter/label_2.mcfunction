$execute store result score #ach pnp.tmp run data get storage pnp:board acb.$(id)
$execute store result score #acn pnp.tmp run data get storage pnp:board acr.need.$(id)
scoreboard players operation #ln pnp.tmp += #acn pnp.tmp
scoreboard players operation #ach pnp.tmp < #acn pnp.tmp
scoreboard players operation #lh pnp.tmp += #ach pnp.tmp
