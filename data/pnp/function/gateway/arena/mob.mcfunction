tag @s add pnp.arena
function pnp:fight/tag_role
particle minecraft:portal ~ ~0.3 ~ 0.2 0.2 0.2 0.3 20
execute if entity @s[tag=pnp.boss] run function pnp:gateway/boss/spawn
execute if entity @s[tag=pnp.c.illusioner] run scoreboard players set @s pnp.spell 220
execute if entity @s[tag=pnp.c.wildfire] run scoreboard players set @s pnp.wsh 4
