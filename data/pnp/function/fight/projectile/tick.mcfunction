scoreboard players add @s pnp.life 1
execute if score @s pnp.life matches 2 run function pnp:fight/projectile/fly
execute if score @s pnp.life matches 12 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{scale:[0f,0f,0f]}}
execute if score @s pnp.life matches 16.. run kill @s
