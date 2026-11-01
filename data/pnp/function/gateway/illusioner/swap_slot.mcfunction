scoreboard players operation #fid pnp.tmp = @s pnp.fid
tag @e[type=item_display,tag=pnp.ill_swap] remove pnp.ill_swap
execute as @e[type=item_display,tag=pnp.illusion,tag=pnp.infight,distance=..14,sort=random] if score @s pnp.fid = #fid pnp.tmp run tag @s add pnp.ill_swap
execute unless entity @e[type=item_display,tag=pnp.ill_swap] run return 0
execute as @e[type=item_display,tag=pnp.ill_swap,limit=1] run tag @s add pnp.ill_one
scoreboard players operation #sa pnp.tmp = @s pnp.fslot
execute as @e[type=item_display,tag=pnp.ill_one,limit=1] run scoreboard players operation #sb pnp.tmp = @s pnp.fslot
scoreboard players operation @s pnp.fslot = #sb pnp.tmp
scoreboard players operation @e[type=item_display,tag=pnp.ill_one,limit=1] pnp.fslot = #sa pnp.tmp
tag @e[type=item_display,tag=pnp.ill_swap] remove pnp.ill_swap
tag @e[type=item_display,tag=pnp.ill_one] remove pnp.ill_one
execute as @e[type=marker,tag=pnp.fight] if score @s pnp.fid = #fid pnp.tmp run scoreboard players set @s pnp.fdirty 1
execute as @e[type=item_display,tag=pnp.c.illusioner,distance=..8] at @s run particle minecraft:cloud ~ ~0.3 ~ 0.25 0.2 0.25 0.02 14
