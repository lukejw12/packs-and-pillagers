scoreboard players operation #tt pnp.tmp = @s pnp.here
scoreboard players operation #tme pnp.tmp = @s pnp.pid
execute as @a[tag=pnp.in_board,scores={pnp.tool=1}] if score @s pnp.here = #tt pnp.tmp at @s run function pnp:wrench/off_self
scoreboard players operation #me pnp.tmp = #tme pnp.tmp
execute at @s run function pnp:wrench/clear_table
