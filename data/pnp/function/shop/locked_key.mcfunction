$execute store result score #lkh pnp.tmp run data get storage pnp:packs p$(p).$(k)
execute if score #lkh pnp.tmp matches 3.. run return fail
return 1
