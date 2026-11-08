$execute store result score #fv pnp.tmp run data get storage pnp:cards defs.$(card).food
execute if entity @s[tag=pnp.c.charred_food] store result score #fv pnp.tmp run data get entity @s item.components."minecraft:custom_data".cv
scoreboard players operation #food pnp.tmp += #fv pnp.tmp
