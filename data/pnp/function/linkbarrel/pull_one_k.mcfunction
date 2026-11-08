$execute unless data storage pnp:cards from_item."$(id)" run return 0
$data modify storage pnp:board lbc set from storage pnp:cards from_item."$(id)"
execute store result score #lbn pnp.tmp run data get storage pnp:board lbs.count
execute store result score #lbg pnp.tmp run data get storage pnp:board lbc.g
execute if score #lbn pnp.tmp < #lbg pnp.tmp run return 0
scoreboard players operation #lbn pnp.tmp -= #lbg pnp.tmp
$execute if score #lbn pnp.tmp matches 1.. run execute store result block ~ ~ ~ Items[{Slot:$(Slot)b}].count int 1 run scoreboard players get #lbn pnp.tmp
$execute if score #lbn pnp.tmp matches ..0 run data remove block ~ ~ ~ Items[{Slot:$(Slot)b}]
data modify storage pnp:board lbe.c set from storage pnp:board lbc.c
return 1
