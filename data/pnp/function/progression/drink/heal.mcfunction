$execute store result score #maxhp pnp.tmp run data get storage pnp:cards defs.$(u).hp
scoreboard players set #heal pnp.tmp 4
function pnp:board/drop/apply_heal
