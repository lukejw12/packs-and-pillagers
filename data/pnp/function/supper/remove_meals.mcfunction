tag @s remove pnp.meal
tag @s remove pnp.mfly
scoreboard players operation #csid pnp.tmp = @s pnp.stack
tag @s add pnp.dying
execute if score @s pnp.idx matches 0 at @s run return run function pnp:fight/die_here
execute at @s as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.stack = #csid pnp.tmp if score @s pnp.idx matches 0 at @s run function pnp:fight/die_here
