$execute store result score #fv pnp.tmp run data get storage pnp:cards defs.$(bt).food
scoreboard players operation #fv pnp.tmp *= @s pnp.bcount
scoreboard players operation #food pnp.tmp += #fv pnp.tmp
