scoreboard players add @s pnp.life 1
execute if score @s pnp.life matches 0 run function pnp:fight/fangs/pop
execute if score @s pnp.life matches 14 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0f,0f,0f]}}
execute if score @s pnp.life matches 18.. run kill @s
