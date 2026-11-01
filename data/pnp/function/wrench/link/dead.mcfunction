scoreboard players operation #ks pnp.tmp = @s pnp.lsrc
kill @s
execute as @e[type=item_display,tag=pnp.card,distance=..48] if score @s pnp.uid = #ks pnp.tmp at @s run function pnp:wrench/has_output
