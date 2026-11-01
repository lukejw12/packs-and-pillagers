tag @s add processed
tag @s add checking_now

execute as @e[tag=brick_factory_card,tag=card_base,tag=!checking_now] run function pnp:card_organization/count_stack_size

execute if entity @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={pnp.stack_count=..9}] run tag @s add found_open_stack

execute if entity @s[tag=found_open_stack] at @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={pnp.stack_count=..9},limit=1,sort=nearest] positioned ~ ~0.05 ~-0.3 run tp @s ~ ~ ~
execute if entity @s[tag=found_open_stack] run scoreboard players operation @s pnp.stack_id = @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={pnp.stack_count=..9},limit=1,sort=nearest] pnp.stack_id
execute if entity @s[tag=found_open_stack] run tag @e[tag=brick_factory_card,tag=card_base,tag=!checking_now,scores={pnp.stack_count=..9}] remove card_base
execute if entity @s[tag=found_open_stack] run data modify entity @s NoGravity set value 1b
execute if entity @s[tag=found_open_stack] run tag @s add stacked_card
execute if entity @s[tag=found_open_stack] run tag @s add card_base

execute unless entity @s[tag=found_open_stack] run scoreboard players add #next_stack_id pnp.temp 1
execute unless entity @s[tag=found_open_stack] run scoreboard players operation @s pnp.stack_id = #next_stack_id pnp.temp
execute unless entity @s[tag=found_open_stack] run tag @s add card_base

tag @s remove checking_now
tag @s remove found_open_stack