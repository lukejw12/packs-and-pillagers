scoreboard players operation #pp pnp.tmp = @s pnp.pid
tag @s add pnp.ppcur
execute as @a[scores={pnp.pid=1..}] unless score @s pnp.pid = #pp pnp.tmp at @s run function pnp:pvp/portal/check
tag @s remove pnp.ppcur
