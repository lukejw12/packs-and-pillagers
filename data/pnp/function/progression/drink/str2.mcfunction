execute if score @s pnp.strb matches 4.. run return 0
execute unless entity @s[tag=pnp.c.villager] if score @s pnp.strb matches 1.. run scoreboard players operation @s pnp.atk -= @s pnp.strb
scoreboard players set @s pnp.strb 4
tag @s add pnp.potfx
execute if entity @s[tag=pnp.c.villager] run function pnp:villager/recalculate
execute unless entity @s[tag=pnp.c.villager] run scoreboard players add @s pnp.atk 4
execute unless entity @s[tag=pnp.c.villager] run function pnp:card/label/stats
function pnp:fight/effects/icon {e:"strength"}
