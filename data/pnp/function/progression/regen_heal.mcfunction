$execute store result score #maxhp pnp.tmp run data get storage pnp:cards defs.$(u).hp
scoreboard players set #heal pnp.tmp 1
execute if score @s pnp.hp < #maxhp pnp.tmp run function pnp:board/drop/apply_heal
execute if score @s pnp.hpmax matches 1.. if score @s pnp.hp < @s pnp.hpmax run function pnp:board/drop/apply_heal
