scoreboard players operation #pt pnp.tmp = @s pnp.target
tag @s add pnp.proj_cur
execute as @e[type=item_display,tag=pnp.card,distance=..8] if score @s pnp.uid = #pt pnp.tmp at @s run tp @e[type=item_display,tag=pnp.proj_cur,limit=1] ~ ~0.12 ~
tag @s remove pnp.proj_cur
