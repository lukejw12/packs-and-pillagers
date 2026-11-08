$execute store result score #cv pnp.tmp run data get storage pnp:cards defs.$(card).food
scoreboard players operation #cv pnp.tmp /= #2 pnp.tmp
execute if score #cv pnp.tmp matches ..0 run scoreboard players set #cv pnp.tmp 1
tag @s add pnp.chold
function pnp:card/spawn {card:"charred_food"}
execute as @e[type=item_display,tag=pnp.c.charred_food,tag=!pnp.chold,distance=..0.3,sort=nearest,limit=1] run function pnp:nether/char_set
particle minecraft:smoke ~ ~0.2 ~ 0.15 0.05 0.2 0.01 12
execute as @e[type=item_display,tag=pnp.chold,distance=..0.3,limit=1] run function pnp:card/remove
