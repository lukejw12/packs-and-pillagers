scoreboard players set @s pnp.spell 0
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..32] ~ ~ ~ 1 1
execute as @e[type=item_display,tag=pnp.illusion,distance=..20] run function pnp:card/remove
scoreboard players operation #illhp pnp.tmp = @s pnp.hp
scoreboard players operation #illmax pnp.tmp = @s pnp.hpmax
execute positioned ~2 65.01 ~ run function pnp:gateway/illusioner/copy
execute positioned ~-2 65.01 ~ run function pnp:gateway/illusioner/copy
execute positioned ~ 65.01 ~1.8 run function pnp:gateway/illusioner/copy
tag @e[type=item_display,tag=pnp.ill_swap] remove pnp.ill_swap
tag @e[type=item_display,tag=pnp.illusion,distance=..4,sort=random,limit=1] add pnp.ill_swap
summon marker ~ ~ ~ {Tags:["pnp.ill_old"]}
tp @s @e[type=item_display,tag=pnp.ill_swap,limit=1]
tp @e[type=item_display,tag=pnp.ill_swap,limit=1] @e[type=marker,tag=pnp.ill_old,limit=1]
kill @e[type=marker,tag=pnp.ill_old]
tag @e[type=item_display,tag=pnp.ill_swap] remove pnp.ill_swap
execute as @e[type=item_display,tag=pnp.c.illusioner,distance=..6] at @s run particle minecraft:cloud ~ ~0.3 ~ 0.25 0.2 0.25 0.02 14
execute if entity @s[tag=pnp.infight] run scoreboard players set @s pnp.fuse 6
