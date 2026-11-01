$execute store result score #ach pnp.tmp run data get storage pnp:board acb.$(id)
$execute store result score #acn pnp.tmp run data get storage pnp:board acr.need.$(id)
execute if score #ach pnp.tmp >= #acn pnp.tmp run return 1
return fail
