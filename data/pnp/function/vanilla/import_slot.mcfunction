$execute unless data storage pnp:cards from_item."$(id)" run return 0
$data modify storage pnp:board ic set from storage pnp:cards from_item."$(id)"
execute store result score #in pnp.tmp run data get storage pnp:board ii.count
execute store result score #ig pnp.tmp run data get storage pnp:board ic.g
execute store result storage pnp:board ic.s int 1 run data get storage pnp:board ii.Slot
function pnp:vanilla/import_convert with storage pnp:board ic
