scoreboard players set @s pnp.tool 0
execute as @e[tag=pnp.fxtrig] if score @s pnp.pid = #me pnp.tmp run kill @s
scoreboard players operation #tt pnp.tmp = @s pnp.here
scoreboard players set #ts pnp.tmp 0
execute as @a[tag=pnp.in_board,scores={pnp.tool=1}] if score @s pnp.here = #tt pnp.tmp run scoreboard players set #ts pnp.tmp 1
execute if score #ts pnp.tmp matches 0 at @s run function pnp:wrench/clear_table
