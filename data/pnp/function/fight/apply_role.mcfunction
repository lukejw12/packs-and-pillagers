$execute if data storage pnp:cards defs.$(card).traits.ranged run tag @s add pnp.ranged
$execute if data storage pnp:cards defs.$(card).traits.beam run tag @s add pnp.beam
$execute if data storage pnp:cards defs.$(card).traits.knock run tag @s add pnp.knock
$execute if data storage pnp:cards defs.$(card).traits.fast run tag @s add pnp.fast
$execute if data storage pnp:cards defs.$(card).traits.undead run tag @s add pnp.undead
$execute if data storage pnp:cards defs.$(card).traits.boss run tag @s add pnp.boss
$execute if data storage pnp:cards defs.$(card).traits{tier:"mini"} run tag @s add pnp.mini
$execute if data storage pnp:cards defs.$(card).cooldown store result score @s pnp.acd run data get storage pnp:cards defs.$(card).cooldown
$execute if data storage pnp:cards defs.$(card).eq run data modify entity @s item.components."minecraft:custom_data".eq set from storage pnp:cards defs.$(card).eq
$execute if data storage pnp:cards defs.$(card).traits.neutral run tag @s add pnp.neutral
$execute if data storage pnp:cards defs.$(card).traits.fly run tag @s add pnp.fly
$execute if data storage pnp:cards defs.$(card).traits.fire run tag @s add pnp.fire
