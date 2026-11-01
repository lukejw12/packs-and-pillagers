execute store result score #pn pnp.tmp if entity @a[tag=pnp.in_board,distance=..64]
execute if score #pn pnp.tmp matches 2.. run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.45f,0.45f,0.45f]}}
execute if score #pn pnp.tmp matches ..1 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0f,0f,0f]}}
