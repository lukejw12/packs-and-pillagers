tag @s remove pnp.swift
tag @s remove pnp.nightv
tag @s remove pnp.waterb
tag @s remove pnp.slowfall
tag @s remove pnp.potfx
execute unless entity @s[tag=pnp.c.villager] if score @s pnp.strb matches 1.. run scoreboard players operation @s pnp.atk -= @s pnp.strb
execute unless entity @s[tag=pnp.c.villager] if score @s pnp.strb matches 1.. run function pnp:card/label/stats
execute if score @s pnp.strb matches 1.. run scoreboard players set @s pnp.strb 0
execute if entity @s[tag=pnp.c.villager] run function pnp:villager/recalculate
execute on passengers if entity @s[tag=pnp.eff_icon] run kill @s
