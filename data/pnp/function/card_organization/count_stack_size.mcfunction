scoreboard players operation #current_stack pnp.temp = @s pnp.stack_id
scoreboard players set #temp_count pnp.temp 0
execute as @e[tag=brick_factory_card] if score @s pnp.stack_id = #current_stack pnp.temp run scoreboard players add #temp_count pnp.temp 1
scoreboard players operation @s pnp.stack_count = #temp_count pnp.temp