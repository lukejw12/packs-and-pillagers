$execute unless data storage pnp:cards gear.$(id) run return 0
scoreboard players set #ga pnp.tmp 0
$execute if data storage pnp:cards gear.$(id).atk store result score #ga pnp.tmp run data get storage pnp:cards gear.$(id).atk
scoreboard players operation #gatk pnp.tmp += #ga pnp.tmp
scoreboard players set #ga pnp.tmp 0
$execute if data storage pnp:cards gear.$(id).hp store result score #ga pnp.tmp run data get storage pnp:cards gear.$(id).hp
scoreboard players operation #ghp pnp.tmp += #ga pnp.tmp
$execute if data storage pnp:cards gear.$(id).role run function pnp:villager/gear/role with storage pnp:cards gear.$(id)
$execute if data storage pnp:cards gear.$(id).talisman run function pnp:villager/gear/talisman with storage pnp:cards gear.$(id)
$execute if data storage pnp:cards gear.$(id){ranged:1b} run tag @s add pnp.ranged
$execute if data storage pnp:cards gear.$(id){guard:1b} run tag @s add pnp.guard
$execute if data storage pnp:cards gear.$(id){reach:1b} run tag @s add pnp.reach
$execute if data storage pnp:cards gear.$(id){pierce:1b} run tag @s add pnp.pierce
$execute if data storage pnp:cards gear.$(id){mace:1b} run tag @s add pnp.mace
$execute if data storage pnp:cards gear.$(id).cd store result score @s pnp.acd run data get storage pnp:cards gear.$(id).cd
