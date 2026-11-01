$execute store result score @s pnp.hp run data get storage pnp:cards defs.$(c).hp
execute if score @s pnp.hpmax matches 1.. run scoreboard players operation @s pnp.hp = @s pnp.hpmax
function pnp:card/label/stats
