execute align xz positioned ~0.5 ~ ~0.5 unless entity @s[distance=..0.05] run return 0
execute align xz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=pnp.gsnap,distance=..0.4] run return 0
tag @s add pnp.gsnap
