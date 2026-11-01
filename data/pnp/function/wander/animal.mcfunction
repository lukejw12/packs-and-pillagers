execute unless function pnp:wander/can run return 0
scoreboard players remove @s pnp.wt 1
execute if score @s pnp.wt matches ..0 run function pnp:wander/animal_next
execute if score @s pnp.ws matches 1 run function pnp:wander/step_slow
