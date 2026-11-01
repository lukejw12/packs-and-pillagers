scoreboard players operation #lfu pnp.tmp = @s pnp.uid
execute as @e[type=block_display,tag=pnp.link] if score @s pnp.lsrc = #lfu pnp.tmp at @s run function pnp:wrench/link/update
execute as @e[type=block_display,tag=pnp.link] if score @s pnp.ldst = #lfu pnp.tmp at @s run function pnp:wrench/link/update
