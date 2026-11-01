$data modify storage pnp:board eq.d set from storage pnp:cards defs.$(w)
execute store result score #watk pnp.tmp run data get storage pnp:board eq.d.atk
execute store result score @s pnp.atk run data get storage pnp:cards defs.villager.atk
scoreboard players operation @s pnp.atk += #watk pnp.tmp
execute on passengers if entity @s[tag=pnp.wpn_icon] run kill @s
execute if data storage pnp:board eq.d.icon run return run function pnp:redstone_caves/weapon_icon with storage pnp:board eq.d
function pnp:fight/weapon_icon with storage pnp:board eq.d
