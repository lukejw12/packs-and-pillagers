data modify storage pnp:board tipj.card set from entity @s item.components."minecraft:custom_data".card
execute store result storage pnp:board tipj.hp int 1 run scoreboard players get @s pnp.hp
execute store result storage pnp:board tipj.atk int 1 run scoreboard players get @s pnp.atk
data remove storage pnp:board tipj.rev
data remove storage pnp:board tipj.spl
execute if entity @s[tag=pnp.c.villager] run function pnp:villager/tips/collect
execute if entity @s[tag=pnp.k.quest] run function pnp:quest/tip
execute if entity @s[tag=pnp.c.baby_villager] run function pnp:villager/baby/tip
execute if entity @s[tag=pnp.fx_on] run function pnp:fight/effects/tip
execute if entity @s[tag=pnp.revealed] run data modify storage pnp:board tipj.rev set value 1b
execute at @s run function pnp:board/tooltip/stack_info
