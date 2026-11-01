$execute store result score #slv pnp.tmp run data get storage pnp:cards defs.$(card).sell
scoreboard players set #sl4 pnp.tmp 4
scoreboard players operation #slv pnp.tmp /= #sl4 pnp.tmp
