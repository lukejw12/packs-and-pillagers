$data modify entity @s item.components."minecraft:custom_data".gear set value "$(g)"
$data modify storage pnp:board gi.give set from storage pnp:cards defs.$(g).give
$execute if data storage pnp:cards defs.$(g).iid run data modify storage pnp:board gi.give set from storage pnp:cards defs.$(g).iid
function pnp:fight/weapon_icon with storage pnp:board gi
$execute if data storage pnp:cards defs.$(g){kind:"weapon"} store result score #ga pnp.tmp run data get storage pnp:cards defs.$(g).atk
$execute if data storage pnp:cards defs.$(g){kind:"weapon"} run scoreboard players operation @s pnp.atk += #ga pnp.tmp
$execute unless data storage pnp:cards defs.$(g){kind:"weapon"} run tag @s add pnp.tal.$(g)
