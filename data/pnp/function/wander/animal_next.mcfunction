execute if score @s pnp.ws matches 1 run return run function pnp:wander/animal_rest
scoreboard players set @s pnp.ws 1
function pnp:wander/turn
execute store result score @s pnp.wt run random value 15..45
