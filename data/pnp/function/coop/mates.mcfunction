tag @a remove pnp.mate
scoreboard players operation #mt pnp.tmp = @s pnp.pid
execute as @a if score @s pnp.here = #mt pnp.tmp run tag @s add pnp.mate
tag @s add pnp.mate
